import 'package:flutter/material.dart';
import 'package:water/home.dart';

class MasterScreen extends StatefulWidget {
  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  List<Widget> children = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  int _selectedIndex = 0;
  static const textColor = Color.fromRGBO(5, 102, 141, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedLabelStyle:
            TextStyle(color: textColor, fontWeight: FontWeight.w400),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/home.png',
              color: textColor,
              width: 32,
            ),
            label: 'الرئيسية',
            activeIcon: Center(),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/shop.png',
              color: textColor,
              width: 32,
            ),
            label: 'الرئيسية',
            activeIcon: Center(),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/deals.png',
              color: textColor,
              width: 32,
            ),
            label: 'الرئيسية',
            activeIcon: Center(),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/account.png',
              color: textColor,
              width: 32,
            ),
            label: 'الرئيسية',
            activeIcon: Center(),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/chat.png',
              color: textColor,
              width: 32,
            ),
            label: 'الرئيسية',
            activeIcon: Center(),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
      ),
    );
  }
}
