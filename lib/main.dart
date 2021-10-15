import 'package:desafio_flutter/menuPage.dart';
import 'package:desafio_flutter/testeMenu.dart';
import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'mainPage.dart';
import 'widgets/nav.dart';

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
        backgroundColor: Colors.grey.shade200,
      ),

      home: TelaLogin(),
      initialRoute: 'login',
      routes: {
        'login': (context) => TelaLogin(),
        'main': (context) => MainPage(),
        'nav': (context) => NavPage(),
        'menu': (context) => MenuPage(),
        'testemenu': (context) => HomeScreen(),
      },
    ),
  );
}
