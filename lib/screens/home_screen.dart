import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imobis/contants.dart';
import 'package:imobis/models/item_model.dart';
import 'package:imobis/screens/account_screen.dart';
import 'package:imobis/screens/advertise_screen.dart';
import 'package:imobis/screens/favourites_screen.dart';
import 'package:imobis/screens/find_screen.dart';
import 'package:imobis/widgets/filter.dart';
import 'package:imobis/widgets/select_category.dart';
import 'package:imobis/widgets/suggestion_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: background,
        toolbarHeight: 60.0,
        automaticallyImplyLeading: false,
        title: Row(
          children: const [
            Icon(
              Icons.location_on,
              color: lightBlue,
            ),
            Text(
              'Itajubá, Minas Gerais',
              style: TextStyle(
                color: darkTypography,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: darkGrey,
            ),
          ),
        ],
      ),
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const SearchField(),
            const SelectCategory(),
            const SizedBox(
              height: 6.0,
            ),
            SuggestionList(
              "Recomendações para você",
              Item.recommendation,
            ),
            const SizedBox(
              height: 10.0,
            ),
            SuggestionList(
              "Perto de você",
              Item.nearby,
            ),
          ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet();
        },
        backgroundColor: lightBlue,
        child: const Icon(Icons.search),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Wrap(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  // decoration: BoxDecoration(
                  //   color: null,
                  //   borderRadius: BorderRadius.circular(10.0),
                  //   border: Border.all(
                  //     color: blue,
                  //     width: 1,
                  //   ),
                  // ),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0,
                          // style: BorderStyle.solid,
                          color: grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0,
                          // style: BorderStyle.solid,
                          color: blue,
                        ),
                      ),
                      filled: false,
                      fillColor: lightGrey,
                      hintText: "Pesquisar...",
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                      ),
                    ),
                  ),
                ),
              ),
              const Filter(),
            ],
          ),
        );
      },
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
