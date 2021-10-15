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
    //
    // RECUPERAR O NOME DO USUÁRIO
    //
    var usr = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              'Olá $usr, seja bem-vindo',
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
