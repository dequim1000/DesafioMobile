import 'package:flutter/material.dart';

class MenuPageAuditoria extends StatefulWidget {
  const MenuPageAuditoria({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPageAuditoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apontamentos Auditoria'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
          key: Key('botaoVoltarAuditoria'),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  ListTile(
                    title: Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            key: Key('botaoPerdas'),
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.inventory_outlined, size: 40),
                                Text("Perdas"),
                              ],
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.grey.shade200,
                              backgroundColor: Colors.blue.shade900,
                              elevation: 5,
                              textStyle: const TextStyle(fontSize: 35),
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 140,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                'perdasPage',
                              );
                              print('Pressed');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
