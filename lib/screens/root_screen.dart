import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_app/screens/home_screen.dart';
import 'package:instagram_clone_app/screens/product_screen.dart';
import 'package:instagram_clone_app/screens/profile_screen.dart';
import 'package:instagram_clone_app/screens/reel_screen.dart';
import 'package:instagram_clone_app/screens/search_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  final List<Widget> _body = [
    const HomeScreen(),
    const SearchScreen(),
    const ReelScreen(),
    const ProductScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/reel.svg'),
            label: "Reel",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bag.svg'),
            label: "Product",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/profile.svg'),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
