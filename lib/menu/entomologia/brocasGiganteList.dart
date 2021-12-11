import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BrocasListPage extends StatefulWidget {
  const BrocasListPage({Key? key}) : super(key: key);

  @override
  _BrocasListPageState createState() => _BrocasListPageState();
}

class _BrocasListPageState extends State<BrocasListPage> {
  var brocas;

  @override
  void initState() {
    super.initState();
    brocas = FirebaseFirestore.instance.collection('brocas');
  }

  //
  // APARÊNCIA de cada elemento da lista
  //
  Widget exibirItem(item) {
    String secao = item.data()['secao'];
    String quadra = item.data()['quadra'];
    String talhao = item.data()['talhao'];

    return ListTile(
      title: Text(
        secao + quadra,
        style: TextStyle(fontSize: 30),
      ),
      subtitle: Text(
        talhao,
        style: TextStyle(fontSize: 24),
      ),
      trailing: SizedBox(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'brocasPage',
                  arguments: item.id,
                );
              },
              icon: Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {
                brocas.doc(item.id).delete();
              },
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DataMob'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
          actions: [
            IconButton(
              icon: Icon(Icons.logout_outlined),
              onPressed: () async {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacementNamed(context, 'login');
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue.shade600,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, 'brocasPage');
          },
        ),

        //
        // EXIBIR documentos da Coleção
        //
        body: Container(
          padding: EdgeInsets.all(20),
          child: StreamBuilder<QuerySnapshot>(
            //fonte de dados (coleção)
            stream: brocas.snapshots(),

            //exibir os dados recuperados
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return const Center(
                    child: Text('Não foi possível conectar ao Firestore'),
                  );

                case ConnectionState.waiting:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );

                default:
                  final dados = snapshot.requireData;
                  return ListView.builder(
                    itemCount: dados.size,
                    itemBuilder: (context, index) {
                      return exibirItem(dados.docs[index]);
                    },
                  );
              }
            },
          ),
        ));
  }
}
