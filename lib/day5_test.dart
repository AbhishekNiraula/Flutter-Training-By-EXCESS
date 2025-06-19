import 'package:flutter/material.dart';
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade200,
        title: Align(
          alignment: Alignment.center,
          child: Text("Counter Application", style: TextStyle(
          color: Colors.white,
        ),),)
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your Current Value is", style: TextStyle(
            fontSize: 18
          ),),
          Center(child: Text(a.toString(), style: TextStyle(
          fontWeight: FontWeight.bold,
            fontSize: 50,
    ),))
        ],
      ),
      floatingActionButton: ElevatedButton(onPressed: (){
        setState(() {

        });
        a += 1;
        print("The updated value of a is $a");
      }, child: Icon(Icons.add)),
    );
  }
}
