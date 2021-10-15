import 'package:desafio_flutter/mainPage.dart';
import 'package:desafio_flutter/testeMenu.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavPage> {
  int _selectedIndex = 0;
  List<Widget> _widegetOptions = <Widget>[
    MainPage(),
    HomeScreen(),
    Text('Profile'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataMob'),
        centerTitle: true,
        leading: Image.asset('assets/images/datamob.png'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            tooltip: 'Sair',
            onPressed: () {
              //
              // NAVEGAÇÃO
              //
              //Ao pressionar o botão o
              //usuário será levado para a
              //LoginPage
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Center(
        child: _widegetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Início'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('Apontamentos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
