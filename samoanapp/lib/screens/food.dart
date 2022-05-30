// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, iterable_contains_unrelated_type

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rive/rive.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetext.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  bool isOut = true;
  bool isChoosen = false;
  String? _animation;
  int _index = 0;
  late RiveAnimation r;

  List<RiveAnimation> _aniList = [
    RiveAnimation.asset(
      "assets/animations/bread.riv",
      fit: BoxFit.cover,
    ),
    RiveAnimation.asset(
      "assets/animations/egg.riv",
      fit: BoxFit.cover,
    ),
  ];

  RiveAnimation getAnimation(int index) {
    setState(() {
      r = _aniList[index];
    });
    return r;
  }

  @override
  Widget build(BuildContext context) {
    // RiveAnimation r = RiveAnimation.asset(
    //   "assets/animations/${_animation!}.riv",
    //   fit: BoxFit.cover,
    // );
    print('build $_animation');

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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ReuseText(
                      text: 'Food',
                      size: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReuseText(
                      text: 'Press the buttons to listen to the numbers.',
                      size: 18,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 236, 109, 255),
                    ),
                    // Divider(
                    //   color: Color.fromARGB(255, 136, 0, 157),
                    // ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: RiveAnimation.asset(
                            "assets/animations/bread.riv",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ReuseText(
                          text: "Falaoa",
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: RiveAnimation.asset(
                            "assets/animations/egg.riv",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ReuseText(
                          text: "Fuamoa",
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: RiveAnimation.asset(
                            "assets/animations/fish.riv",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ReuseText(
                          text: "I'a",
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: RiveAnimation.asset(
                            "assets/animations/milk.riv",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ReuseText(
                          text: "Susu",
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: RiveAnimation.asset(
                            "assets/animations/cornbeef.riv",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ReuseText(
                          text: "Pisupo",
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: RiveAnimation.asset(
                            "assets/animations/salt.riv",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ReuseText(
                          text: "Masima",
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),

                    // SizedBox(
                    //   height: 300,
                    //   width: 400,
                    //   child: Card(
                    //     color: Color.fromARGB(255, 147, 3, 157),
                    //     elevation: 8,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(25),
                    //     ),
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(20),
                    //       child: RiveAnimation.asset(
                    //         "assets/animations/egg.riv",
                    //         fit: BoxFit.cover,
                    //       ),
                    //       // isNull == false
                    //       //     ? getAnimation(_index)
                    //       //     : Text(""),
                    //     ),
                    //   ),
                    // ),

                    // AnimationLimiter(
                    //     child: GridView.count(
                    //   physics: NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   crossAxisCount: 2,
                    //   children: List.generate(10, (index) {
                    //     return AnimationConfiguration.staggeredGrid(
                    //       position: index,
                    //       columnCount: 2,
                    //       duration: const Duration(milliseconds: 500),
                    //       child: ScaleAnimation(
                    //         child: FadeInAnimation(
                    //           child: AudioButton(
                    //               player: player,
                    //               number: index + 1,
                    //               word: numlist[index].word,
                    //               audioFile: numlist[index].audioFile),
                    //         ),
                    //       ),
                    //     );
                    //   }),
                    // )),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
