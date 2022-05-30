// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:samoanapp/screens/grammar.dart';
import 'package:samoanapp/screens/numbers.dart';
import 'package:samoanapp/screens/phrases.dart';
import 'package:samoanapp/screens/words.dart';

//Link to DB
final List data = [
  {'color': Colors.red},
  {'color': Colors.green},
  {'color': Colors.blue},
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Phrases(),
    Words(),
    Grammar(),
  ];

  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            //iconSize: 30,
            elevation: 0,
            //selectedFontSize: 10,

            backgroundColor: Color.fromARGB(255, 98, 0, 105),
            selectedIconTheme: IconThemeData(
                color: Color.fromARGB(255, 255, 255, 255), size: 30),
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color.fromARGB(255, 255, 255, 255),
            unselectedIconTheme: IconThemeData(
              color: Colors.black26,
            ),
            //unselectedItemColor: Colors.deepOrange,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.solidCompass,
                  ),
                  label: 'Phrases'),
              BottomNavigationBarItem(
                  icon: Icon(
                    MdiIcons.heartMultiple,
                  ),
                  label: 'Words'),
              BottomNavigationBarItem(
                  icon: Icon(
                    MdiIcons.calendarStar,
                  ),
                  label: 'Grammar'),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }),
        body: tabs[_currentIndex]);
  }
}
