import 'dart:math';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DATAMOB',

      //
      // TEMA
      //
      theme: ThemeData(
        primaryColor: Colors.deepPurple[900],
        backgroundColor: Colors.grey.shade200,
      ),

      home: TelaLogin(),
    ),
  );
}
