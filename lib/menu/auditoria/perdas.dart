import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PerdasPage extends StatelessWidget {
  var _controladorSecao = TextEditingController();
  var _controladorQuadra = TextEditingController();
  var _controladorTalhao = TextEditingController();
  var _controladorPequenas = TextEditingController();
  var _controladorAptas = TextEditingController();
  var _controladorCrisalidas = TextEditingController();
  var _controladorMassas = TextEditingController();
  var _controladorOutrosParasitas = TextEditingController();
  var _controladorTempoPessoas = TextEditingController();
  var _controladorQuantidade = TextEditingController();
  var _controladorNumeroLev = TextEditingController();
  var _controladorQuantideColaboradores = TextEditingController();

  getDocumentById(id) async {
    await FirebaseFirestore.instance
        .collection('perdas')
        .doc(id)
        .get()
        .then((value) {
      _controladorSecao.text = value.get('secao');
      _controladorQuadra.text = value.get('quadra');
      _controladorTalhao.text = value.get('talhao');
      _controladorPequenas.text = value.get('pequenas');
      _controladorAptas.text = value.get('aptas');
      _controladorCrisalidas.text = value.get('crisalidas');
      _controladorMassas.text = value.get('massas');
      _controladorOutrosParasitas.text = value.get('outrosParasitas');
      _controladorTempoPessoas.text = value.get('tempoPessoas');
      _controladorQuantidade.text = value.get('quantidade');
      _controladorNumeroLev.text = value.get('numeroLev');
      _controladorQuantideColaboradores.text =
          value.get('quantidadeColaboradores');
    });
  }

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments;

    if (id != null) {
      if (_controladorSecao.text.isEmpty &&
          _controladorQuadra.text.isEmpty &&
          _controladorTalhao.text.isEmpty) {
        getDocumentById(id);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Perdas'),
        actions: [
          IconButton(
            icon: Icon(Icons.map),
            tooltip: 'Abrir Mapa',
            onPressed: () {
              Navigator.pushNamed(
                context,
                'mapsPage',
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.camera),
            tooltip: 'Abrir Camera',
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: TextField(
                controller: _controladorSecao,
                decoration: InputDecoration(
                  labelText: 'Seção',
                  prefixIcon: Icon(Icons.search),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      controller: _controladorQuadra,
                      decoration: InputDecoration(
                        labelText: 'Quadra',
                        prefixIcon: Icon(Icons.search),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                  ),
                  Flexible(
                    child: TextField(
                      controller: _controladorTalhao,
                      decoration: InputDecoration(
                        labelText: 'Talhao',
                        prefixIcon: Icon(Icons.search),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Perdas',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.blue.shade900,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorNumeroLev,
                decoration: InputDecoration(labelText: 'Nro. Lev.'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorPequenas,
                decoration: InputDecoration(labelText: 'Pequenas'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorAptas,
                decoration: InputDecoration(labelText: 'Aptas'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorCrisalidas,
                decoration: InputDecoration(labelText: 'Crisalidas'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorMassas,
                decoration: InputDecoration(labelText: 'Massas'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorOutrosParasitas,
                decoration: InputDecoration(labelText: 'Outros Parasitadas'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorTempoPessoas,
                decoration: InputDecoration(labelText: 'Qtd. Colaboradores'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorQuantideColaboradores,
                decoration: InputDecoration(labelText: 'Tempo/Pessoa'),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  padding: EdgeInsets.all(20),
                  textStyle: TextStyle(
                    fontSize: 24,
                  ),
                ),
                onPressed: () {
                  if (id == null) {
                    //
                    // ADICIONAR um novo documento na Coleção
                    //
                    FirebaseFirestore.instance.collection('perdas').add(
                      {
                        'secao': _controladorSecao.text,
                        'quadra': _controladorQuadra.text,
                        'talhao': _controladorTalhao.text,
                        'pequenas': _controladorPequenas.text,
                        'aptas': _controladorAptas.text,
                        'crisalidas': _controladorCrisalidas.text,
                        'massas': _controladorMassas.text,
                        'outrosParasitas': _controladorOutrosParasitas.text,
                        'tempoPessoas': _controladorTempoPessoas.text,
                        'quantidade': _controladorQuantidade.text,
                        'numeroLev': _controladorNumeroLev.text,
                        'quantidadeColaboradores':
                            _controladorQuantideColaboradores.text,
                      },
                    ).catchError((erro) {
                      print(erro.toString());
                    });
                  } else {
                    //
                    // ATUALIZAR um documento na Coleção
                    //
                    FirebaseFirestore.instance
                        .collection('perdas')
                        .doc(id.toString())
                        .set(
                      {
                        'secao': _controladorSecao.text,
                        'quadra': _controladorQuadra.text,
                        'talhao': _controladorTalhao.text,
                        'pequenas': _controladorPequenas.text,
                        'aptas': _controladorAptas.text,
                        'crisalidas': _controladorCrisalidas.text,
                        'massas': _controladorMassas.text,
                        'outrosParasitas': _controladorOutrosParasitas.text,
                        'tempoPessoas': _controladorTempoPessoas.text,
                        'quantidade': _controladorQuantidade.text,
                        'numeroLev': _controladorNumeroLev.text,
                        'quantidadeColaboradores':
                            _controladorQuantideColaboradores.text,
                      },
                    );
                  }

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Operação realizada com sucesso'),
                    duration: Duration(seconds: 2),
                  ));

                  Navigator.pop(context);
                },
                child: Text('Enviar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
