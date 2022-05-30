// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetext.dart';

class ReuseContentCard extends StatefulWidget {
  final Widget page;
  final String title;
  final Icon icon;
  const ReuseContentCard(
      {Key? key, required this.page, required this.title, required this.icon})
      : super(key: key);

  @override
  State<ReuseContentCard> createState() => _ReuseContentCardState();
}

class _ReuseContentCardState extends State<ReuseContentCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget.page));
      },
      child: Column(
        children: [
          SizedBox(
            height: 120,
            width: 120,
            child: Card(
              //color: Colors.grey.shade200.withOpacity(0.5),
              elevation: 5,
              shape: CircleBorder(
                side: BorderSide(
                  color: Colors.brown,
                  width: 8,
                ),
              ),
              //RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: widget.icon,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ReuseText(
            text: widget.title,
            size: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
