import 'dart:js';

import 'package:desafio_flutter/login/criar_conta.dart';
import 'package:desafio_flutter/menu/auditoria/perdas.dart';
import 'package:desafio_flutter/menu/auditoria/perdasList.dart';
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
import 'menu/entomologia/brocasGiganteList.dart';
import 'menu/entomologia/pragas_de_soloList.dart';
import 'menu/entomologia/sphenophorusList.dart';
import 'widgets/nav.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
        'pragasDeSoloPage': (context) => PragasDeSoloPage(),
        'perdasPage': (context) => PerdasPage(),
        'criar_conta': (context) => CriarContaPage(),
        'brocasList': (context) => BrocasListPage(),
        'pragasList': (context) => PragasList(),
        'sphenophorusList': (context) => SphenophorusListPage(),
        'perdasList': (context) => PerdasListPage(),
      },
    ),
  );
}
