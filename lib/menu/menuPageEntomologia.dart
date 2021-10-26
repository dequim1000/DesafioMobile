import 'package:flutter/material.dart';

class MenuPageEntomologia extends StatefulWidget {
  const MenuPageEntomologia({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPageEntomologia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apontamentos Entomologia'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
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
                            key: Key('botaoPragas'),
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.bug_report, size: 40),
                                Text("Pragas de Solo"),
                              ],
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.grey.shade200,
                              backgroundColor: Colors.blue.shade900,
                              elevation: 5,
                              textStyle: const TextStyle(fontSize: 35),
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 60,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                'pragasDeSoloPage',
                              );
                              print('Pressed');
                            },
                          ),
                          SizedBox(height: 40),
                          TextButton(
                            key: Key('botaoSphe'),
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.bug_report, size: 40),
                                Text("Sphenophorus"),
                              ],
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.grey.shade200,
                              backgroundColor: Colors.blue.shade900,
                              elevation: 5,
                              textStyle: const TextStyle(fontSize: 35),
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 65,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                'sphenophorousPage',
                              );
                              print('Pressed');
                            },
                          ),
                          SizedBox(height: 40),
                          TextButton(
                            key: Key('botaoBroca'),
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.bug_report, size: 40),
                                Text("Broca Gigante"),
                              ],
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.grey.shade200,
                              backgroundColor: Colors.blue.shade900,
                              elevation: 5,
                              textStyle: const TextStyle(fontSize: 35),
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 65,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                'brocasPage',
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
