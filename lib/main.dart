import 'package:desafio_flutter/menu/auditoria/perdas.dart';
import 'package:desafio_flutter/menu/entomologia/brocasGigante.dart';
import 'package:desafio_flutter/menu/entomologia/pragas_de_solo.dart';
import 'package:desafio_flutter/menu/entomologia/sphenophorus.dart';
import 'package:desafio_flutter/menu/menuPageAuditoria.dart';
import 'package:desafio_flutter/menu/menuPageEntomologia.dart';
import 'package:desafio_flutter/menu/MenuPrincipal.dart';
import 'package:desafio_flutter/widgets/maps.dart';
import 'package:flutter/material.dart';
import 'login/loginPage.dart';
import '../menu/mainPage.dart';
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
        'menuEntomologia': (context) => MenuPageEntomologia(),
        'menuAuditoria': (context) => MenuPageAuditoria(),
        'menu': (context) => HomeScreen(),
        'brocasPage': (context) => BrocasGigantesPage(),
        'sphenophorousPage': (context) => SphenophorousPage(),
        'pragasDeSoloPage': (context) => PragasDeSolosPage(),
        'perdasPage': (context) => PerdasPage(),
        'mapsPage': (context) => MapsPAge(),
        // 'mapsPage': (context) => BrocasGigantesPage(),
        // 'cameraPage': (context) => BrocasGigantesPage(),
      },
    ),
  );
}
