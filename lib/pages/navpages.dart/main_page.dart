import 'package:cubit_app/pages/navpages.dart/bar_item_page.dart';
import 'package:cubit_app/pages/navpages.dart/homepage.dart';
import 'package:cubit_app/pages/navpages.dart/my_page.dart';
import 'package:cubit_app/pages/navpages.dart/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage()
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        elevation: 0,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.person))
        ],
      ),
    );
  }
}