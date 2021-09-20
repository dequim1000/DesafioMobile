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
        primaryColor: Colors.blue.shade900,
        backgroundColor: Colors.blue.shade100,
      ),

      home: TelaLogin(),
    ),
  );
}
