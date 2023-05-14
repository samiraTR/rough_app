import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_nav_project/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, (MaterialPageRoute(builder: (context) => HomePage())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("Google Nav Project")],
      ),
    );
  }
}
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:my_transcom/local_storage/boxes.dart';
// import 'package:my_transcom/ui/home_page.dart';
// import 'package:my_transcom/ui/login_page.dart';
// import 'package:my_transcom/ui/my_profile.dart';
// import 'package:my_transcom/ui/search_screen.dart';
// import 'package:my_transcom/utils/global_variables.dart';

// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   int selectedIndex = 0;

//   final userDataBox = Boxes.getUserData();

//   final pages = [HomePage(), MyProfile(), SearchProductPage(), LoginPage()];

//   @override
//   void initState() {
//     super.initState();
//     if (userDataBox.isEmpty) {
//       pages[0] = LoginPage();
//     } else {
//       pages[0] = HomePage();
//     }
//   }

//   // @override
//   // void dispose() {
//   //   super.dispose();
//   //   pageController.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//         duration: 2000,
//         splash: Image.asset('assets/images/Transcom.png'),
//         nextScreen: PageView(
//             controller: pageController,
//             // onPageChanged: (index) {
//             //   selectedIndex = index;

//             //   // pageController.animateToPage(selectedIndex,
//             //   //     duration: const Duration(milliseconds: 100),
//             //   //     curve: Curves.linear);
//             // },
//             children: pages),
//         splashTransition: SplashTransition.fadeTransition,
//         backgroundColor: Colors.white);
//   }
// }
// // userDataBox.isNotEmpty ? HomePage() : LoginPage()