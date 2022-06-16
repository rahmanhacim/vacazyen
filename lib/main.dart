import 'package:vacazyen/pages/akun.dart';
import 'package:vacazyen/pages/home.dart';
import 'package:vacazyen/pages/inbox.dart';
import 'package:vacazyen/pages/pemesanan.dart';
import 'package:vacazyen/pages/simpan.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _layoutPage= [
    Home(),
    Simpan(),
    Pemesanan(),
    Inbox(),
    Akun()
  ];

  void _onTabItem(int index){
    setState(() {
          _selectedIndex = index;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Awal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Save'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'My Account'
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
