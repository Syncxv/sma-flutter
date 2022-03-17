import 'package:flutter/material.dart';
import 'package:sma_flutter/screens/graphql_test_screen.dart';
import 'package:sma_flutter/widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const Scaffold(
      body: Center(
        child: Text(
          "hiOGIWEJOGJWOIGJWIEGJ",
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
    TESTING12(),
  ];
  final List<IconData> _icons = const [Icons.home, Icons.chat];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: CustomTabBar(
          icons: _icons,
          onTap: (index) => setState(() => _selectedIndex = index),
          selectedIndex: _selectedIndex,
        ),
      ),
    );
  }
}
