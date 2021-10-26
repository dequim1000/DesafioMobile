import 'package:flutter/material.dart';

//
// TELA LOGIN
//
// Atalho para gerar a estrutura do Stateful = stf
class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  //Atributos responsável por controlar os valores
  //informados nos campos de texto
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  //Atributo para identificar unicamente o formulário
  //e permitir a validação dos campos
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,

        //LOGO DATAMOB
        leading: Image.asset('assets/images/datamob.png'),

        //Aplicação da cor definida no tema
        backgroundColor: Theme.of(context).primaryColor,

        //Ícone de usuário
        //leading: Icon(Icons.account_circle_rounded),
        // leadingWidth: 56,

        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            tooltip: 'Atualizar Tela',
            onPressed: () {
              //print('botão pressionado');
              setState(() {
                formKey.currentState!.reset();
                txtEmail.text = '';
                txtSenha.text = '';
                FocusScope.of(context).unfocus();
              });
            },
          )
        ],
      ),

      //
      // BODY
      //
      body: Container(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.people,
                  size: 80,
                  color: Theme.of(context).primaryColor,
                ),
                campoTexto('Email', txtEmail),
                campoSenha('Senha', txtSenha),
                botao('Entrar'),
              ],
            ),
          ),
        ),
      ),

      backgroundColor: Theme.of(context).backgroundColor,
    );
  }

  //
  // CAMPO DE TEXTO para entrada de dados
  //
  campoTexto(rotulo, variavelControle) {
    return Container(
      key: Key('campoEmail'),
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: TextFormField(
        //exibir o telado numérico
        keyboardType: TextInputType.text,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 24,
        ),

        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 14,
          ),
        ),

        //Variável associada ao campo de texto que
        //permitirá recuperar as informações digitadas
        controller: variavelControle,

        //
        // VALIDADOR
        //
        validator: (value) {
          if (value == null || value == '') {
            //não foi possível converter o valor para double
            return 'Entre com um Email Válido';
          } else {
            //a conversão foi realizada com sucesso
            return null;
          }
        },
      ),
    );
  }

  //
  // CAMPO DE SENHA para entrada de dados
  //
  campoSenha(rotulo, variavelControle) {
    return Container(
      key: Key('campoSenha'),
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: TextFormField(
        //exibir o telado numérico
        keyboardType: TextInputType.text,
        obscureText: true,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 24,
        ),

        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 14,
          ),
        ),

        //Variável associada ao campo de texto que
        //permitirá recuperar as informações digitadas
        controller: variavelControle,

        //
        // VALIDADOR
        //
        validator: (value) {
          if (value == null || value == '' || value.length > 8) {
            //não foi possível converter o valor para double
            return 'Entre com uma Senha Válida';
          } else {
            //a conversão foi realizada com sucesso
            return null;
          }
        },
      ),
    );
  }

  //
  // BOTAO
  //
  botao(rotulo) {
    return Container(
      key: Key('botaoLogin'),
      margin: EdgeInsets.only(top: 30, right: 90, left: 90),
      child: ElevatedButton(
        child: Text(rotulo),
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          textStyle: TextStyle(
            fontSize: 24,
          ),
        ),
        onPressed: () {
          setState(() {
            var usr = txtEmail.text.toUpperCase();
            var pwd = txtSenha.text;

            if ((usr == 'USUARIO1' || usr == 'USUARIO2') && pwd == '1234') {
              //
              // NAVEGAÇÃO
              //
              //Abrir a PrincipalPage quando o usuário
              //pressionar o botão entrar
              Navigator.pushNamed(
                context,
                'nav',

                //Passar como argumento o nome do usuário
                //para a PrincipalPage
                arguments: usr,
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Usuário e/ou senha inválidos.'),
                ),
              );
            }
          });
        },
      ),
    );
  }

  //
  // CAIXA DE DIÁLOGO
  //
  caixaDialogo(mensagem) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resultado'),
          content: Text(
            mensagem,
            style: TextStyle(fontSize: 24),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('ok'),
            ),
          ],
        );
      },
    );
  }
}
