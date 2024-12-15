import 'package:flutter/material.dart';
import 'ethereum_utils.dart';

class BalanceScreen extends StatefulWidget {
  @override
  _BalanceScreenState createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  late EthereumUtils _ethUtils;
  int? _balance;

  @override
  void initState() {
    super.initState();
    _ethUtils = EthereumUtils();
    _getBalance(); // Fetch balance on initialization
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ethereum Balance'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _registerTransaction();
              },
              child: Text('Register Transaction'),
            ),
            SizedBox(height: 20),
            _balance != null
                ? Text('Balance: $_balance')
                : CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }

  Future<void> _registerTransaction() async {
    try {
      await _ethUtils.register();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Transaction registered successfully.'),
        ),
      );
      _getBalance(); // Update balance after transaction
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to register transaction: $e'),
        ),
      );
    }
  }

  Future<void> _getBalance() async {
    try {
      final balance = await _ethUtils.balanceOfUser();
      setState(() {
        _balance = balance; // Update _balance variable
      });
    } catch (e) {
      throw Exception('Failed to fetch balance: $e');
    }
  }
}
