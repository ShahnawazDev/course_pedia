import 'package:course_pedia/screens/home_screen.dart';
import 'package:course_pedia/utils/bottom_navigation_bar_items.dart';
import 'package:flutter/material.dart';

class RootSreen extends StatefulWidget {
  const RootSreen({super.key});

  @override
  State<RootSreen> createState() => _RootSreenState();
}

class _RootSreenState extends State<RootSreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          Center(child: Text('Batches')),
          Center(child: Text('Chat')),
          Center(child: Text('Profile')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: buildBottonNavigationBarItems,
      ),
    );
  }
}
 