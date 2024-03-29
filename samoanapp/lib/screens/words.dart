// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rive/rive.dart';
import 'package:samoanapp/screens/colorssa.dart';
import 'package:samoanapp/screens/days.dart';
import 'package:samoanapp/screens/family.dart';
import 'package:samoanapp/screens/food.dart';
import 'package:samoanapp/screens/numbers.dart';
import 'package:samoanapp/screens/reusableWidgets/reusecontentcard.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetext.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetitletext.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:url_launcher/url_launcher.dart';

class Words extends StatefulWidget {
  const Words({Key? key}) : super(key: key);

  @override
  State<Words> createState() => _WordsState();
}

class _WordsState extends State<Words> {
  showAlertDialog(BuildContext? context) {
    // Create button
    Widget okButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        "OK",
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      onPressed: () {
        Navigator.pop(context!);
      },
    );

    // _launchNumber() async {
    //   const url = 'tel:+61421819757';
    //   if (await canLaunch(url)) {
    //     await launch(url);
    //   } else {
    //     throw 'Could not launch $url';
    //   }
    // }

    _launchEmail() async {
      const url = 'mailto:utol.technology@gmail.com';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Samoan Language App"),
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'UTOL TECH\n\nContact Us\n\n',
                style: TextStyle(color: Colors.black)),

            // TextSpan(text: 'Email: ', style: TextStyle(color: Colors.black)),
            // TextSpan(
            //     text: "utol.technology@gmail.com\n\n",
            //     style: TextStyle(color: Colors.orange[900]),
            //     recognizer: TapGestureRecognizer()
            //       ..onTap = () {
            //         _launchEmail();
            //       }),
            TextSpan(
                text: 'Instagram: ', style: TextStyle(color: Colors.black)),
            TextSpan(
                text: "@utol.tech\n\n",
                style: TextStyle(
                  color: Colors.brown,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('https://www.instagram.com/utol_tech/');
                  }),
            TextSpan(text: 'Facebook: ', style: TextStyle(color: Colors.black)),
            TextSpan(
                text: "Utol Tech\n\n",
                style: TextStyle(
                  color: Colors.brown,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch(
                        'https://www.facebook.com/utol.tech/?modal=admin_todo_tour');
                  }),
            // TextSpan(text: 'Website: ', style: TextStyle(color: Colors.black)),
            // TextSpan(
            //     text: "mafileo.github.io\n\n",
            //     style: TextStyle(color: Colors.orange[900]),
            //     recognizer: TapGestureRecognizer()
            //       ..onTap = () {
            //         launch('https://mafileo.github.io/');
            //       }),
          ]),
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context!,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            RiveAnimation.asset(
              "assets/animations/island.riv",
              fit: BoxFit.cover,
              //artboard: "New Artboard",
              // onInit: (Artboard artboard) {
              //   artboard.fills.first.paint.color = Colors.red;

              //   artboard.forEachComponent(
              //     (child) {
              //       if (child is Shape) {
              //         final Shape shape = child;
              //         shape.fills.first.paint.color = Colors.red;
              //       }
              //     },
              //   );
              // },
            ),
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
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Center(
                  child: Column(
                    children: [
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            ReuseTitleText(
                              text: 'Samoan Words',
                              size: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReuseText(
                              text:
                                  'Here you can learn individual Samoan words.',
                              size: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          ReuseContentCard(
                            page: Numbers(),
                            title: 'Numbers',
                            icon: Icon(
                              MdiIcons.numeric,
                              size: 45,
                              color: Colors.brown,
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ReuseContentCard(
                                  page: ColorsSa(),
                                  title: 'Colors',
                                  icon: Icon(
                                    MdiIcons.palette,
                                    size: 45,
                                    color: Colors.brown,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(20)),
                                        ),
                                        builder: (context) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Center(
                                              child: SingleChildScrollView(
                                                scrollDirection: Axis.vertical,
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    SizedBox(
                                                      height: 100,
                                                      width: 100,
                                                      child: Image.asset(
                                                          "assets/images/samoanlogo.png"),
                                                    ),
                                                    ReuseTitleText(
                                                      text:
                                                          "Thank you for downloading this app!",
                                                      size: 25,
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    ReuseText(
                                                      text: "UTOL TECH",
                                                      size: 18,
                                                      spacing: 1,
                                                    ),
                                                    // SizedBox(
                                                    //   height: 30,
                                                    // ),
                                                    // ElevatedButton(
                                                    //   style: ElevatedButton
                                                    //       .styleFrom(
                                                    //     side: BorderSide(
                                                    //         width: 2,
                                                    //         color:
                                                    //             Colors.white),
                                                    //     shape:
                                                    //         RoundedRectangleBorder(
                                                    //       borderRadius:
                                                    //           BorderRadius
                                                    //               .circular(25),
                                                    //     ),
                                                    //     fixedSize:
                                                    //         Size(200, 50),
                                                    //   ),
                                                    //   onPressed: () {
                                                    //     // Share.share(
                                                    //     //     'https://play.google.com/store/apps/details?id=utoltechnologies.hymnappstt');
                                                    //   },
                                                    //   child: Text("Share"),
                                                    // ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        side: BorderSide(
                                                            width: 2,
                                                            color:
                                                                Colors.white),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                        ),
                                                        fixedSize:
                                                            Size(200, 50),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text("Feedback"),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        side: BorderSide(
                                                            width: 2,
                                                            color:
                                                                Colors.white),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                        ),
                                                        fixedSize:
                                                            Size(200, 50),
                                                      ),
                                                      onPressed: () {
                                                        // Navigator.of(context).pop();
                                                        showAlertDialog(
                                                            context);
                                                      },
                                                      child: Text("Contact"),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(
                                        "assets/images/samoanlogo.png"),
                                  ),
                                ),

                                // InkWell(
                                //   onTap: () {},
                                //   child: Column(
                                //     children: [
                                //       SizedBox(
                                //         height: 120,
                                //         width: 120,
                                //         child: Card(
                                //           //color: Colors.grey.shade200.withOpacity(0.5),
                                //           elevation: 5,
                                //           shape: CircleBorder(
                                //             side: BorderSide(
                                //                 color: Colors.brown, width: 8),
                                //           ),
                                //           child: Image.asset(
                                //               "assets/images/samoanlogo.png"),
                                //           //RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                //         ),
                                //       ),
                                //       SizedBox(
                                //         height: 10,
                                //       ),
                                //       ReuseText(
                                //         text: "",
                                //         size: 20,
                                //         fontWeight: FontWeight.bold,
                                //         color: Color.fromARGB(255, 255, 255, 255),
                                //       ),
                                //       SizedBox(
                                //         height: 5,
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                ReuseContentCard(
                                  page: Days(),
                                  title: 'Days',
                                  icon: Icon(
                                    MdiIcons.calendarMonth,
                                    size: 45,
                                    color: Colors.brown,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReuseContentCard(
                                page: Food(),
                                title: 'Food',
                                icon: Icon(
                                  MdiIcons.food,
                                  size: 45,
                                  color: Colors.brown,
                                ),
                              ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              ReuseContentCard(
                                page: Family(),
                                title: 'Family',
                                icon: Icon(
                                  MdiIcons.humanMaleFemaleChild,
                                  size: 45,
                                  color: Colors.brown,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
