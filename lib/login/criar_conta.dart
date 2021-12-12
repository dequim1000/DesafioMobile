import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CriarContaPage extends StatefulWidget {
  const CriarContaPage({Key? key}) : super(key: key);

  @override
  _CriarContaPageState createState() => _CriarContaPageState();
}

class _CriarContaPageState extends State<CriarContaPage> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Usuário'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: [
            const Text(
              'Criar Conta',
              style: const TextStyle(
                fontSize: 36,
                color: Colors.blueAccent,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: txtEmail,
              style: const TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.w300),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: 'Email'),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              controller: txtSenha,
              style: const TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w300,
              ),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Senha',
              ),
            ),
            const SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: ElevatedButton(
                    child: Text("Cadastrar"),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      textStyle: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    onPressed: () {
                      criarConta(txtEmail.text, txtSenha.text);
                    },
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 350,
                  child: ElevatedButton(
                    child: Text("Cancelar"),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      textStyle: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  //
  // CRIAR CONTA no Firebase Auth
  //
  void criarConta(email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Usuário criado com sucesso!'),
          duration: Duration(
            seconds: 2,
          ),
        ),
      );
      Navigator.pop(context);
    }).catchError((erro) {
      var msg = '';
      if (erro.code == 'email-already-in-use') {
        msg = 'ERRO: O email informado já está em uso';
      } else {
        msg = 'ERRO: ${erro.message}';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(msg),
          duration: Duration(
            seconds: 2,
          ),
        ),
      );
    });
  }
}
