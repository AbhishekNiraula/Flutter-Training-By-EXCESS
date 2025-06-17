import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("      **welcome to DIDDY's Party**   " , style: TextStyle(
            fontSize: 25,
                color: Colors.black,
            fontWeight: FontWeight.bold

        ),),
      ),
          body : Container(
            child : Center (
        child : Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("abhisek " , style: TextStyle(
            fontSize: 25,
            color:  Colors.teal,
          ),)
        ],
    )
    )
          )  );
  }
}
