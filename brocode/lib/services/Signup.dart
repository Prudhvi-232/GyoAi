import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late TextEditingController textEditingController1;
  late TextEditingController textEditingController2;
  @override
  void initState() {
    super.initState();
    textEditingController1 = TextEditingController();
    textEditingController2 = TextEditingController();
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
                  
                },
                child: const Text('SignUp'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}