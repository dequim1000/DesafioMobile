import 'package:flutter/material.dart';
//
// PRINCIPAL PAGE
//

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              'Olá, seja bem-vindo',
              style: TextStyle(
                fontSize: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
