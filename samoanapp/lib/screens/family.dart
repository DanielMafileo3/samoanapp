// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rive/rive.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetext.dart';

class Family extends StatefulWidget {
  const Family({Key? key}) : super(key: key);

  @override
  State<Family> createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  RiveAnimationController _controller = OneShotAnimation('mum');
  String ani = "";

  @override
  void initState() {
    _controller = OneShotAnimation('dad');

    super.initState();
  }

  void _toggleAni() {
    _controller = OneShotAnimation('dad');
  }

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
        body: Stack(
          children: [
            RiveAnimation.asset(
              "assets/animations/background.riv",
              fit: BoxFit.cover,
            ),
            PageView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReuseText(
                      text: "Family",
                      size: 30,
                      color: Colors.white,
                    ),
                    Center(
                      child: SizedBox(
                        height: 400,
                        width: 400,
                        child: RiveAnimation.asset(
                          "assets/animations/aiga.riv",
                          fit: BoxFit.cover,
                          animations: ["family"],
                          //controllers: [_controller],
                        ),
                      ),
                    ),
                    ReuseText(
                      text: "Aiga",
                      size: 50,
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: () {
                        //print("daddd");
                      },
                      child: Icon(
                        MdiIcons.volumeHigh,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReuseText(
                      text: "Dad",
                      size: 30,
                      color: Colors.white,
                    ),
                    Center(
                      child: SizedBox(
                        height: 400,
                        width: 400,
                        child: RiveAnimation.asset(
                          "assets/animations/aiga.riv",
                          fit: BoxFit.cover,
                          animations: ["dad"],
                          //controllers: [_controller],
                        ),
                      ),
                    ),
                    ReuseText(
                      text: "Tama",
                      size: 50,
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: () {
                        //print("daddd");
                      },
                      child: Icon(
                        MdiIcons.volumeHigh,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReuseText(
                      text: "Mum",
                      size: 30,
                      color: Colors.white,
                    ),
                    Center(
                      child: SizedBox(
                        height: 400,
                        width: 400,
                        child: RiveAnimation.asset(
                          "assets/animations/aiga.riv",
                          fit: BoxFit.cover,
                          animations: ["mum"],
                          //controllers: [_controller],
                        ),
                      ),
                    ),
                    ReuseText(
                      text: "Tina",
                      size: 50,
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: () {
                        //print("daddd");
                      },
                      child: Icon(
                        MdiIcons.volumeHigh,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReuseText(
                      text: "Brother",
                      size: 30,
                      color: Colors.white,
                    ),
                    Center(
                      child: SizedBox(
                        height: 400,
                        width: 400,
                        child: RiveAnimation.asset(
                          "assets/animations/aiga.riv",
                          fit: BoxFit.cover,
                          animations: ["son"],
                          //controllers: [_controller],
                        ),
                      ),
                    ),
                    ReuseText(
                      text: "Tuagane",
                      size: 50,
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: () {
                        //print("daddd");
                      },
                      child: Icon(
                        MdiIcons.volumeHigh,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReuseText(
                      text: "Sister",
                      size: 30,
                      color: Colors.white,
                    ),
                    Center(
                      child: SizedBox(
                        height: 400,
                        width: 400,
                        child: RiveAnimation.asset(
                          "assets/animations/aiga.riv",
                          fit: BoxFit.cover,
                          animations: ["daughter"],
                          //controllers: [_controller],
                        ),
                      ),
                    ),
                    ReuseText(
                      text: "Tuafafine",
                      size: 50,
                      color: Colors.white,
                    ),
                    InkWell(
                      onTap: () {
                        //print("daddd");
                      },
                      child: Icon(
                        MdiIcons.volumeHigh,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )

        // Container(
        //   //color: Color.fromARGB(255, 73, 0, 79),

        //   child:

        //   Stack(
        //     children: [
        // RiveAnimation.asset(
        //   "assets/animations/background.riv",
        //   fit: BoxFit.cover,
        // ),
        //       Column(
        //         children: [
        //           ElevatedButton(
        //             onPressed: () {
        //               setState(() {
        //                 ani = "dad";
        //               });
        //             },
        //             child: Text("data"),
        //           ),
        //           ElevatedButton(
        //             onPressed: () {
        //               setState(() {
        //                 _controller = OneShotAnimation('son');
        //               });
        //             },
        //             child: Text("data"),
        //           ),
        // Center(
        //   child: SizedBox(
        //     height: 400,
        //     width: 400,
        //     child: RiveAnimation.asset(
        //       "assets/animations/aiga.riv",
        //       fit: BoxFit.cover,
        //       animations: ["daugther"],
        //       //controllers: [_controller],
        //     ),
        //   ),
        // ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
