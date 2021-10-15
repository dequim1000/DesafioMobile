import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataMob'),
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
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.bug_report, size: 50),
                                Text("Entomologia"),
                              ],
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.grey.shade200,
                              backgroundColor: Colors.blue.shade900,
                              elevation: 5,
                              textStyle: const TextStyle(fontSize: 45),
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 30,
                              ),
                            ),
                            onPressed: () {
                              print('Pressed');
                            },
                          ),
                          SizedBox(height: 40),
                          TextButton(
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.inventory_outlined, size: 50),
                                Text("Auditoria"),
                              ],
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.grey.shade200,
                              backgroundColor: Colors.blue.shade900,
                              elevation: 5,
                              textStyle: const TextStyle(fontSize: 45),
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 65,
                              ),
                            ),
                            onPressed: () {
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