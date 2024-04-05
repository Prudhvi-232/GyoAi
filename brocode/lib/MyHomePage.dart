import "package:flutter/material.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

TextEditingController textEditingController = new TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BroCode",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'enter the name'),
            ),
            SizedBox(height: 25),
            TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'enter the name'),
            ),
            SizedBox(height: 25),
            ElevatedButton(onPressed:(){

            },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
