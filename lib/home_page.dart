import 'package:flutter/material.dart';
import 'package:uts_tpm_123200059/bangundatar_page.dart';
import 'package:uts_tpm_123200059/kalender_page.dart';
import 'package:uts_tpm_123200059/profile_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

   static List<Widget> _widgetOptions = <Widget>[
     Home_Page(), const BangunDatar(), const KalenderPage(), ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers, color: Colors.grey),
            label: 'Bangun Datar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range, color: Colors.grey),
            label: 'Kalender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.grey),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text("Selamat Datang!",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
