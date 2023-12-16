import 'dart:isolate';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: const [
            Text('Set up'),
            Icon(Icons.settings),
          ],
          centerTitle: true,
          title: const Text('Settings'),
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.white,
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyLittleContainer(text: 'Very Low'),
            SizedBox(height: 10),
            MyLittleContainer(text: 'Low'),
            SizedBox(height: 10),
            MyLittleContainer(
              text: 'Medium',
              isSelected: true,
            ),
            SizedBox(height: 10),
            MyLittleContainer(text: 'Average'),
            SizedBox(height: 10),
            MyLittleContainer(text: 'High'),
            SizedBox(height: 10),
          ]),
        ),
      ),
    );
  }
}

class MyLittleContainer extends StatelessWidget {
  const MyLittleContainer({
    super.key,
    required this.text,
    this.isSelected = false,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.red,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Text(
          text,
          style: const TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.purple,
            spreadRadius: 10,
            blurRadius: 18,
            offset: Offset(-10, 10),
          )
        ],
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 10,
          color: Colors.green,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Container(
          color: Colors.black,
        ),
      ),
    );
  }
}
