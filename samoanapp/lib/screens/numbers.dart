// ignore_for_file: prefer_const_constructors, must_call_super, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:just_audio/just_audio.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rive/rive.dart';
import 'package:samoanapp/screens/reusableWidgets/audiobutton.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetext.dart';

class Numbers extends StatefulWidget {
  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  AudioPlayer? player;

  List<AudioButton> numbtn = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<AudioButton> numlist = [
      AudioButton(player: player, number: 1, word: "Tasi", audioFile: "kasi"),
      AudioButton(player: player, number: 2, word: "Lua", audioFile: "lua"),
      AudioButton(player: player, number: 3, word: "Tolu", audioFile: "kolu"),
      AudioButton(player: player, number: 4, word: "Fa", audioFile: "fa"),
      AudioButton(player: player, number: 5, word: "Lima", audioFile: "lima"),
      AudioButton(player: player, number: 6, word: "Ono", audioFile: "ono"),
      AudioButton(player: player, number: 7, word: "Fitu", audioFile: "fiku"),
      AudioButton(player: player, number: 8, word: "Valu", audioFile: "valu"),
      AudioButton(player: player, number: 9, word: "Iva", audioFile: "ivva"),
      AudioButton(
          player: player, number: 10, word: "Sefulu", audioFile: "sefulu"),
    ];
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
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ReuseText(
                        text: 'Numbers',
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
                      AnimationLimiter(
                          child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        children: List.generate(10, (index) {
                          return AnimationConfiguration.staggeredGrid(
                            position: index,
                            columnCount: 2,
                            duration: const Duration(milliseconds: 500),
                            child: ScaleAnimation(
                              child: FadeInAnimation(
                                child: AudioButton(
                                    player: player,
                                    number: index + 1,
                                    word: numlist[index].word,
                                    audioFile: numlist[index].audioFile),
                              ),
                            ),
                          );
                        }),
                      )),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
