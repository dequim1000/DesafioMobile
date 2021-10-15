import 'package:desafio_flutter/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context)
        .size
        .width; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .40,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: width / (height / 6),
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
                            Navigator.pushNamed(
                              context,
                              'menu',
                            );
                            print('Pressed');
                          },
                        ),
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
