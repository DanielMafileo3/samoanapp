// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rive/rive.dart';
import 'package:samoanapp/screens/home.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetext.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetitletext.dart';
import 'package:samoanapp/screens/words.dart';

class Welccome extends StatelessWidget {
  const Welccome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 7, 230),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            RiveAnimation.asset("assets/animations/welcome_screen.riv",
                fit: BoxFit.cover),
            Positioned(
              left: 0,
              top: height * .75,
              //bottom: 100,
              child: SizedBox(
                width: width,
                //height: height * .6,
                child: Image.asset(
                  "assets/images/pattern-one.png",
                  fit: BoxFit.cover,
                  color: Colors.brown,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Samoan Language App",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReuseText(
                      text: 'UTOL TECH',
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                      spacing: 2,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          width: 2,
                          color: Colors.brown,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        fixedSize: Size(200, 60),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Words(),
                          ),
                        );
                      },
                      child: Text(
                        "Samoan Words",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
