import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart' as http;

class EthereumUtils {
  late Web3Client web3client;
  late http.Client httpClient;
  final contractAddress = dotenv.env['CONTRACT_ADDRESS'];

  void initial() {
    httpClient = http.Client();
    String infuraApi = "https://eth-sepolia.g.alchemy.com/v2/oq2kXhoYzDS0eNUlRrS0AyBSGQ8hFRJe";
    web3client = Web3Client(infuraApi, httpClient);
  }

  Future<void> register() async {
  final credentials = EthPrivateKey.fromHex(dotenv.env['PRIVATE_KEY']!);
  final contract = await getDeployedContract(credentials);
  final registerFunction = contract.function("register");
  final transaction = Transaction.callContract(contract: contract, function: registerFunction, parameters: []);

  final response = await web3client.sendTransaction(credentials, transaction);
  print("Transaction response: $response");
}


  Future<int> balanceOfUser() async {
    final contract = await getDeployedContract();
    final etherFunction = contract.function("balanceOfUser");
    final result = await web3client.call(contract: contract, function: etherFunction, params: []);
    List<dynamic> res = result;
    return res[0];
  }

  Future<DeployedContract> getDeployedContract([Credentials? credentials]) async {
    String abi = await rootBundle.loadString("assets/abi.json");
    final contract = DeployedContract(ContractAbi.fromJson(abi, "BasicDapp"), EthereumAddress.fromHex(contractAddress!));
    return contract;
  }

  void initialize() {}
}