import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(title: Text('Row and Column')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First row of blue boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakKuning(),
                  SizedBox(width: 20), //jarak antar kotak
                  KotakKuning(),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20), //jarak antar baris
              // Second row of purple boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakCyan(),
                  SizedBox(width: 20), //jarak antar kotak
                  KotakCyan(),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakKuning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 195, 255, 0),
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: const Color.fromARGB(255, 255, 0, 0),
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            "Favorite",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class KotakCyan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 255, 195),
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: const Color.fromARGB(255, 255, 0, 0),
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            "Favorite",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
