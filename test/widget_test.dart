import 'package:desafio_flutter/login/loginPage.dart';
import 'package:desafio_flutter/menu/MenuPrincipal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:desafio_flutter/menu/menuPageAuditoria.dart';
import 'package:desafio_flutter/menu/menuPageEntomologia.dart';
import 'package:desafio_flutter/menu/auditoria/perdas.dart';

void main() {
  testWidgets('Componentes de Login', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TelaLogin()));

    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(Form), findsOneWidget);
  });

  testWidgets('Deve testar a funcionalidade do Login',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TelaLogin()));

    final campoEmail = find.byKey(Key('campoEmail'));
    expect(campoEmail, findsOneWidget);
    final campoSenha = find.byKey(Key('campoSenha'));
    expect(campoSenha, findsOneWidget);
    final botaoLogin = find.byKey(Key('botaoLogin'));
    expect(botaoLogin, findsOneWidget);

    await tester.tap(botaoLogin);
    await tester.pump();
    expect(botaoLogin, findsOneWidget);
  });

  testWidgets('Deve testar a funcionalidade do Menu',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      routes: {
        'menu': (context) => HomeScreen(),
      },
    ));

    final botaoEntomologia = find.byKey(Key('botaoEntomologia'));
    expect(botaoEntomologia, findsOneWidget);
    final botaoAuditoria = find.byKey(Key('botaoAuditoria'));
    expect(botaoAuditoria, findsOneWidget);

    await tester.tap(botaoEntomologia);
    await tester.pump();
    expect(botaoEntomologia, findsOneWidget);
  });

  testWidgets('Deve testar a funcionalidade do Menu Entomologia',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        routes: {
          'menuEntomologia': (context) => MenuPageEntomologia(),
          'menu': (context) => HomeScreen(),
        },
      ),
    );

    final botaoPragas = find.byKey(Key('botaoPragas'));
    expect(botaoPragas, findsOneWidget);
    final botaoSphe = find.byKey(Key('botaoSphe'));
    expect(botaoSphe, findsOneWidget);
    final botaoBroca = find.byKey(Key('botaoBroca'));
    expect(botaoBroca, findsOneWidget);

    await tester.tap(botaoPragas);
    await tester.pump();
    expect(botaoPragas, findsOneWidget);
  });
}
