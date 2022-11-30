// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:just_audio/just_audio.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rive/rive.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetext.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetitletext.dart';

class Days extends StatefulWidget {
  const Days({Key? key}) : super(key: key);

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  List<String> _daysOfTheWeek = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
  ];
  List<String> _daysOfTheWeekSamoan = [
    "Aso Sa",
    "Aso Gafua",
    "Aso Lua",
    "Aso Lulu",
    "Aso Tofi",
    "Aso Faraile",
  ];

  List<String> _audioDays = [
    "aso_sa",
    "aso_gafua",
    "aso_lua",
    "aso_lulu",
    "aso_tofi",
    "aso_faraile",
  ];

  String _day = "";

  AudioPlayer? player;

  @override
  void initState() {
    player = AudioPlayer();

    super.initState();
  }

  @override
  void dispose() {
    player?.dispose();
    super.dispose();
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
                      text: 'Days',
                      size: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReuseText(
                      text: 'Press the buttons to listen to the days.',
                      size: 18,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 236, 109, 255),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 300,
                      width: 400,
                      child: Card(
                        color: Color.fromARGB(255, 147, 3, 157),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                              child: ReuseText(
                            text: _day,
                            size: 50,
                            color: Colors.white,
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: 6,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    //elevation: 8,
                                    foregroundColor:
                                        Color.fromARGB(255, 236, 109, 255),
                                    backgroundColor:
                                        Color.fromARGB(255, 147, 3, 157),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                                onPressed: () {
                                  setState(() {
                                    _day = _daysOfTheWeekSamoan[index];
                                  });
                                  player?.setAsset(
                                      "assets/audio/days/${_audioDays[index]}.mp3");
                                  player?.play();
                                },
                                child: ReuseText(
                                  text: _daysOfTheWeek[index],
                                  size: 18,
                                ),
                              ),
                            );
                          }),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          //elevation: 8,
                          foregroundColor: Color.fromARGB(255, 236, 109, 255),
                          backgroundColor: Color.fromARGB(255, 147, 3, 157),
                          fixedSize: Size(110, 110),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      onPressed: () {
                        setState(() {
                          _day = "Aso To'ona'i";
                        });
                        player?.setAsset("assets/audio/days/aso_toonai.mp3");
                        player?.play();
                      },
                      child: ReuseText(
                        text: "Saturday",
                        size: 18,
                      ),
                    ),

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
