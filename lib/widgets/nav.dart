import 'package:desafio_flutter/menu/mainPage.dart';
import 'package:desafio_flutter/menu/MenuPrincipal.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
            key: Key('botaoDeslogar'),
            icon: Icon(Icons.logout),
            tooltip: 'Sair',
            onPressed: () async {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, 'login');
            },
          )
        ],
      ),
      body: Center(
        key: Key('selecaoItem'),
        child: _widegetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        key: Key('botaoNavigator'),
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
