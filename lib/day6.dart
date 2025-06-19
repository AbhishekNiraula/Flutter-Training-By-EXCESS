import 'package:flutter/material.dart';
class CounterApp extends StatefulWidget {
  const CounterApp ({super.key});

  @override
  State<CounterApp> createState() => _CounterApp();
}

class _CounterApp extends State<CounterApp> {
  @override
  int a=0;
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("your count Starts here "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("your count is ", style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold

            ),),
            Text("$a",style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
        floatingActionButton: Container(
          height: 50,
          width: 55,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)),
            color: Colors.teal,
          ),
          child: GestureDetector(
              onTap: (){
                setState(() {
                  a+=1;
                  print(a);
                  print("button tap");
                });
              },
              child: Icon(Icons.add,color: Colors.white,size: 50,)),
        ),
    );
  }
}
