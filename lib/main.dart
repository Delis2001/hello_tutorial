import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hello_tutorial/home_page.dart';
import 'package:hello_tutorial/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
 List<Widget> pages = const [
  HomePage(),
  ProfilePage()
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
        ),
       body: pages [currentPage],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Floating Action Buttom');
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          destinations:const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
          ],
          onDestinationSelected: (int index){
            setState(() {
             currentPage = index; 
            });
          },
            selectedIndex: currentPage,
        )
        );
  }
}


