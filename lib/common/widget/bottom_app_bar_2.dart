import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wheel_manager/renting/presentation/renting-list/search_vehicle.dart';

import '../../maintenance/presentation/maintenance-list/offer.dart';
import '../../management/presentation/management-list/my_vehicle.dart';

class BottomBar2 extends StatefulWidget {
  const BottomBar2({super.key});

  @override
  State<BottomBar2> createState() => _BottomBar2State();
}

class _BottomBar2State extends State<BottomBar2> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MyVehicle(),
    /*
    Text(
      'History',
      style: optionStyle,
    ),*/
    Offer(),
    /*
    Text(
      'Profile',
      style: optionStyle,
    ),*/
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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Color(0xff94A1B2),
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.location_searching),
            label: 'Descubre',
          ),
          /*
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.auto_awesome_motion_outlined),
            label: 'History',
          ),*/
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.place_outlined),
            label: 'Ofertas',
          ),
          /*
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),*/
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
