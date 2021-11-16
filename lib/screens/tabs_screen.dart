import 'package:flutter/material.dart';

import './home_screen.dart';
import './search_screen.dart';
import './explore_screen.dart';
import './profile_screen.dart';
import './cart_screen.dart';
import '../widgets/custom_appbar.dart';

class TabScreen extends StatefulWidget {
  const TabScreen();

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
        'title': 'Home',
      },
      {
        'page': SearchScreen(),
        'title': 'Search',
      },
      {
        'page': ExploreScreen(),
        'title': 'Explore',
      },
      {
        'page': ProfileScreen(),
        'title': 'Profile',
      },
      {
        'page': CartScreen(),
        'title': 'Cart',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bggunungan.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              CustomAppBar(),
              _pages[_selectedPageIndex]['page'] as Widget,
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Container(
                width: 30, child: Image.asset('assets/images/home.png')),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Container(
              width: 30,
              child: Image.asset('assets/images/search.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: "Explore",
            icon: Container(
                width: 30, child: Image.asset('assets/images/explore.png')),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Container(
                width: 30, child: Image.asset('assets/images/profile.png')),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Container(
                width: 30, child: Image.asset('assets/images/cart.png')),
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
