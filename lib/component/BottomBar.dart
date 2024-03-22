import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../page/Cart.dart';
import '../page/Create.dart';
import '../page/Home.dart';
import '../page/Profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Home(),
    Create(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
        'Pot Shop',
        style: TextStyle(
        color: Colors.white, // Couleur du texte en blanc
        backgroundColor: Colors.black, // Couleur de fond en noir
    ),
        ),centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Action pour déclencher la recherche
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff6200ee),
        unselectedItemColor: const Color(0xff757575),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _navBarItems,
      ),
    );
  }
}


final _navBarItems = [
  SalomonBottomBarItem(
    icon: const Icon(Icons.home),
    title: const Text("Home"),
    selectedColor: Colors.black,
  ),
  SalomonBottomBarItem(
    icon: Image.asset('assets/images/icon.png', width: 35,),
    title: const Text("Nous"),
    selectedColor: Colors.black,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.card_membership),
    title: const Text("panier"),
    selectedColor: Colors.black,
  ),


  SalomonBottomBarItem(
    icon: const Icon(Icons.person),
    title: const Text("Profile"),
    selectedColor: Colors.black,
  ),
];
