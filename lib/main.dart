import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nexflix/firebase_options.dart';
import 'package:nexflix/screen/home_screen.dart';
import 'package:nexflix/screen/like_screen.dart';
import 'package:nexflix/screen/more_screen.dart';
import 'package:nexflix/screen/search_screen.dart';
import 'package:nexflix/widget/bottom_Bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              const SearchScreen(),
              const LikeScreen(),
              const MoreScreen()
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
