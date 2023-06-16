import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey[850],
          appBar: AppBar(
            backgroundColor: Colors.grey[700],
            title: Center(
              child: Text(
                "Magic Ball",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )),
    ),
  );
}
