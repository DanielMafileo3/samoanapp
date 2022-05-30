// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samoanapp/screens/home.dart';
import 'package:samoanapp/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samoan App',
      theme: ThemeData(
        textTheme: GoogleFonts.macondoTextTheme(),
        primarySwatch: Colors.brown,
      ),
      home: Welccome(),
    );
  }
}
