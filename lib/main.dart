//import 'package:fitnessapp/ui/pages/profile_screen.dart';
import 'package:exerciseapp/ui/pages/home_page.dart';
import 'package:exerciseapp/ui/pages/test.dart';
import 'package:exerciseapp/ui/pages/timer_page.dart';
import 'package:exerciseapp/ui/pages/records_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final screens = [HomePage(), TimerPage(), RecordsPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          //allows the state to be preserved when switching screens
          index: _selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: ClipRRect(
          child: BottomNavigationBar(
            iconSize: 40,
            currentIndex: _selectedIndex,
            unselectedItemColor: const Color.fromARGB(255, 1, 217, 255),
            selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            selectedFontSize: 15,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_fill),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.timer),
                label: 'Timer',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.rosette),
                label: 'Records',
              ),
            ],
            onTap: _onItemTapped,
          ),
        ));
  }
}
