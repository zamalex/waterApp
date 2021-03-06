import 'package:flutter/material.dart';
import 'package:water/account/account.dart';
import 'package:water/cart/cart.dart';
import 'package:water/home/home.dart';
import 'package:water/support/main_support.dart';
import 'package:water/offers/offers.dart';

class MasterScreen extends StatefulWidget {
  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  List<Widget> children = [
    HomeScreen(),
    CartScreen(),
    OffersScreen(),
    SupportScreen(),
    AccountScreen(),
  ];
  int _selectedIndex = 0;
  static const textColor = Color.fromRGBO(5, 102, 141, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 25,
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
              width: 25,
            ),
            label: 'الرئيسية',
            activeIcon: Center(),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/shop.png',
              color: textColor,
              width: 25,
            ),
            label: 'مشترياتي',
            activeIcon: Center(),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/deals.png',
              color: textColor,
              width: 25,
            ),
            label: 'عروض',
            activeIcon: Center(),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/chat.png',
              color: textColor,
              width: 25,
            ),
            label: 'الدعم',
            activeIcon: Center(),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/account.png',
              color: textColor,
              width: 25,
            ),
            label: 'حسابي',
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
