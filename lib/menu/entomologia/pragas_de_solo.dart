import 'package:flutter/material.dart';

class PragasDeSolo {
  final String secao,
      quadra,
      talhao,
      pequenas,
      aptas,
      crisalidas,
      massas,
      outrosParasitadas,
      tempoPessoa;
  final int? quantidade, nroLev, qtdeColaboradores;

  PragasDeSolo(
    this.secao,
    this.quantidade,
    this.quadra,
    this.talhao,
    this.pequenas,
    this.aptas,
    this.crisalidas,
    this.massas,
    this.outrosParasitadas,
    this.tempoPessoa,
    this.nroLev,
    this.qtdeColaboradores,
  );
}

class PragasDeSolosPage extends StatelessWidget {
  final TextEditingController _controladorSecao = TextEditingController();
  final TextEditingController _controladorQuadra = TextEditingController();
  final TextEditingController _controladorTalhao = TextEditingController();
  final TextEditingController _controladorPequenas = TextEditingController();
  final TextEditingController _controladorAptas = TextEditingController();
  final TextEditingController _controladorCrisalidas = TextEditingController();
  final TextEditingController _controladorMassas = TextEditingController();
  final TextEditingController _controladorOutrosParasitas =
      TextEditingController();
  final TextEditingController _controladorTempoPessoas =
      TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorNumeroLev = TextEditingController();
  final TextEditingController _controladorQuantideColaboradores =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pragas de Solo'),
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
                'Pragas de Solo',
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
                  print('Pragas de Solo');
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
