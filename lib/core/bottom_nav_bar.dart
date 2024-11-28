import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/home.dart';
import 'package:hyolmo/pages/login_page.dart';
import 'package:hyolmo/pages/members.dart';
import 'package:hyolmo/pages/menu.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final appScreens = [
    const HomeScreen(),
    const MenuPage(),
   // const Center(child: Text("Members")),  //chetana
   // const Center(child: Text("Account")),
    const LoginPage(),
    // ignore: prefer_const_constructors
    MenuPage(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: AppStyles.primaryColor,
        title: const Text('Hyolmo Social Service Center', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppStyles.bottomBtnColor,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.switch_account_rounded,
              ),
              label: 'Members'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_sharp,
              ),
              label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'Menu'),
        ],
      ),
    );
  }
}
