import 'package:flutter/material.dart';
import 'package:tugas5/page/list_page.dart';
import 'package:tugas5/page/profile_page.dart';
import 'package:tugas5/page/pertemuan_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final List<Widget> pages = [const ProfilePage(), const ListPage()];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: pages[currentPage],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentPage,
          onTap: (i) => setState(() => currentPage = i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.blue,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.list),
              title: const Text("List"),
              selectedColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
