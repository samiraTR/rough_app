import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_nav_project/fourth_page.dart';
import 'package:google_nav_project/home_page.dart';
import 'package:google_nav_project/second_page.dart';
import 'package:google_nav_project/third_page.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    title: 'GNav',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: Example()));

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  PageController pageController = PageController();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SecondPage(),
    ThirdPage(),
    FourthPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: const Text('GoogleNavBar'),
      ),
      body:
          //  PageView(
          //   controller: pageController,
          //   children: _widgetOptions,
          //   onPageChanged: (v) {
          //     _selectedIndex = v;

          //     _widgetOptions.animateToPage;
          //   },

          // ),

          Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: const Color.fromARGB(255, 189, 69, 69),
              hoverColor: Colors.amber[100]!,
              gap: 8,
              activeColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: const Color.fromARGB(255, 99, 10, 110),
              color: Colors.green,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  iconActiveColor: Colors.black,
                  iconSize: 24,
                  text: 'Home',
                  // onPressed: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: 'Likes',
                  // onPressed: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => SecondPage()));
                  // },
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                  // onPressed: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => ThirdPage()));
                  // },
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  // onPressed: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => FourthPage()));
                  // },
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
