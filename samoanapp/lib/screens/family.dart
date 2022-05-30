// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rive/rive.dart';

class Family extends StatefulWidget {
  const Family({Key? key}) : super(key: key);

  @override
  State<Family> createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 3, 157),
        centerTitle: true,
        title: Text("Samoa"),
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(MdiIcons.arrowLeft)),
      ),
      body: Container(
        //color: Color.fromARGB(255, 73, 0, 79),

        child: Stack(
          children: [
            RiveAnimation.asset(
              "assets/animations/background.riv",
              fit: BoxFit.cover,
            ),
            Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: RiveAnimation.asset(
                  "assets/animations/aiga.riv",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
