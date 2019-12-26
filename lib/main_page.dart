import 'package:cukcat_v20_1_0/screens/calendar.dart';
import 'package:cukcat_v20_1_0/screens/community.dart';
import 'package:cukcat_v20_1_0/screens/home.dart';
import 'package:cukcat_v20_1_0/screens/notice.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetLists = <Widget>[
    Home(),
    Notice(),
    Calendar(),
    Community()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetLists,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue[900],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        items: <BottomNavigationBarItem>[
          _buildBottomNavigationBarItem(
            itemIcon: Icons.home,
            itemTitle: "홈",
          ),
          _buildBottomNavigationBarItem(
            itemIcon: Icons.notifications,
            itemTitle: "공지",
          ),
          _buildBottomNavigationBarItem(
            itemIcon: Icons.calendar_today,
            itemTitle: "캘린더",
          ),
          _buildBottomNavigationBarItem(
            itemIcon: Icons.group,
            itemTitle: "커뮤니티",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => _onItemTapped(index),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      {IconData itemIcon, String itemTitle}) {
    return BottomNavigationBarItem(
      activeIcon: Icon(itemIcon),
      icon: Icon(itemIcon),
      title: Text(itemTitle),
    );
  }

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
