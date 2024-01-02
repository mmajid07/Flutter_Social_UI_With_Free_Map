 

import 'package:flutter/material.dart';
import 'package:test_app/Style/App_Colors.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int count= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("This is a Counter: $count ", style: TextStyle(fontSize: 30,color: AppColors.font, fontWeight: FontWeight.bold),)),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
        setState(() {
          count ++;
        });
      },
      child: Icon(Icons.add),
      ),
    );
  }
}