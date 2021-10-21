import 'package:desafio_flutter/menuPageAuditoria.dart';
import 'package:desafio_flutter/menuPageEntomologia.dart';
import 'package:desafio_flutter/MenuPrincipal.dart';
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
        primaryColor: Colors.deepPurple[900],
        backgroundColor: Colors.grey.shade200,
      ),

      home: TelaLogin(),
      initialRoute: 'login',
      routes: {
        'login': (context) => TelaLogin(),
        'main': (context) => MainPage(),
        'nav': (context) => NavPage(),
        'menuEntomologia': (context) => MenuPageEntomologia(),
        'menuAuditoria': (context) => MenuPageAuditoria(),
        'menu': (context) => HomeScreen(),
      },
    ),
  );
}
