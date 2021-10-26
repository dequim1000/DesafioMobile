import 'package:desafio_flutter/login/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Componentes de Login', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TelaLogin()));

    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(Form), findsOneWidget);
  });
}
