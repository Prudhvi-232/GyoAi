import 'package:flutter/material.dart';
import 'package:hacking/ethereum_utils.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late TextEditingController textEditingController1;
  late TextEditingController textEditingController2;
  final EthereumUtils _ethUtils = EthereumUtils();

  @override
  void initState() {
    super.initState();
    textEditingController1 = TextEditingController();
    textEditingController2 = TextEditingController();
    _ethUtils.initial(); // Initialize _ethUtils here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hof4.jpeg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textEditingController1,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  hintText: 'Enter The FirstName',
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: textEditingController1,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  hintText: 'Enter the LastName',
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: textEditingController2,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  hintText: 'Enter the password',
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: textEditingController2,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  hintText: 'Enter the confirmpassword',
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  _registerToken();
                },
                child: const Text('SignUp'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _registerToken() async {
    try {
      // Call the function to register token
      // For example:
      // await _ethUtils.registerToken();
      // Show success message or navigate to the balance screen
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to register token: $e'),
        ),
      );
    }
  }
}