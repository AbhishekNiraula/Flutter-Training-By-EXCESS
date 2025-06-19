import 'dart:async';

import 'package:flutter/material.dart';
class Clock extends StatefulWidget {
  const Clock ({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  int a = 0;
  int hour = DateTime.now().hour;
  int minute = DateTime.now().minute;
  int seconds = DateTime.now().second;

  @override
  void initState() {
    super.initState();
    Timer.periodic((Duration(seconds:1)), (timer){
      hour = DateTime.now().hour;
      minute = DateTime.now().minute;
      seconds = DateTime.now().second;
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${hour > 12?hour-12:hour}: $minute: $seconds", style: TextStyle(
            color: Colors.teal,
            fontSize: 69,
          ),),
        ],
      ),
    );
  }
}
