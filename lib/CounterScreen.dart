import 'package:bloc_counter/Counter/Widget/Counter.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Counter(
            onChange: (value){
              Toast.show("Counter 1: $value", context);
            },
          ),
          SizedBox(height: 40.0,),
          Counter(
            onChange: (int value) {
              Toast.show("Counter 2: $value", context);
            },
          ),
        ],
      ),
    );
  }
}
