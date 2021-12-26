import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:pear_education/modules/explore/screens/explore_screen.dart';
import 'package:pear_education/modules/groups/screens/groups_screen.dart';
import 'package:pear_education/modules/home/screens/home_screen.dart';
import 'package:pear_education/modules/home_courses/screens/home_courses_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String routeName = '/main-screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? _selectedItemPosition;
  List<Widget> listScreen = [
    // HomeScreen(),
    HomeCoursesScreen(),
    ExploreScreen(),
    GroupsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedItemPosition = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[_selectedItemPosition!],
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.circle,
        snakeViewColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        // elevation: 8,
        currentIndex: _selectedItemPosition!,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cabin_rounded,
              size: 28,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
              size: 28,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_work_sharp,
              size: 28,
            ),
            label: 'Groups',
          ),
        ],
      ),
    );
  }
}
