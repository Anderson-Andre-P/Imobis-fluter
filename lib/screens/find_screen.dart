import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imobis/contants.dart';
import 'package:imobis/screens/account_screen.dart';
import 'package:imobis/screens/advertise_screen.dart';
import 'package:imobis/screens/favourites_screen.dart';
import 'package:imobis/screens/home_screen.dart';

class Find extends StatefulWidget {
  const Find({super.key});

  @override
  State<Find> createState() => _FindState();
}

class _FindState extends State<Find> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Find(),
    Favourites(),
    Advertise(),
    Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Descobrir",
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 0.0,
      //   backgroundColor: background,
      //   selectedItemColor: lightBlue,
      //   unselectedItemColor: darkGrey,
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItemMethod(CupertinoIcons.home, "Início"),
      //     BottomNavigationBarItemMethod(
      //         Icons.find_in_page_outlined, "Descobrir"),
      //     BottomNavigationBarItemMethod(CupertinoIcons.heart, "Favoritos"),
      //     BottomNavigationBarItemMethod(Icons.message_outlined, "Anúncie"),
      //     BottomNavigationBarItemMethod(CupertinoIcons.person, "Perfil"),
      //   ],
      // ),
    );
  }

  BottomNavigationBarItem BottomNavigationBarItemMethod(
    IconData icon,
    String dataLabel,
  ) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: dataLabel,
    );
  }
}
