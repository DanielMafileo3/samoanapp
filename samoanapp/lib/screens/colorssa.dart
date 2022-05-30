// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:just_audio/just_audio.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rive/rive.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetext.dart';
import 'package:samoanapp/screens/reusableWidgets/reusetitletext.dart';

class ColorsSa extends StatefulWidget {
  const ColorsSa({Key? key}) : super(key: key);

  @override
  State<ColorsSa> createState() => _ColorsSaState();
}

class _ColorsSaState extends State<ColorsSa> {
  List<String> _colorNames = [
    "Moana",
    "Meamata",
    "Mumu",
    "Viole",
    "Piniki",
    "Samasama",
    "Moli",
    "'Ena 'Ena",
    "Pa'e Pa'e",
    "Uliuli",
    "'Efu 'Efu",
  ];

  List<Color> _colors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.purple,
    Colors.pink,
    Colors.yellow,
    Colors.orange,
    Colors.brown,
    Colors.white,
    Colors.black,
    Colors.grey,
  ];

  List<String> _audioFiles = [
    "moana",
    "meamata",
    "mumu",
    "viole",
    "piniti",
    "samasama",
    "moli",
    "enaena",
    "paepae",
    "uliuli",
    "efuefu",
  ];

  AudioPlayer? player;

  bool isLightColor = false;

  bool islight(int index) {
    if (_colorNames[index].contains("Samasama") ||
        _colorNames[index].contains("Pa'e Pa'e")) {
      print('true');
      isLightColor = true;
    } else {
      print('false');
      isLightColor = false;
    }

    return isLightColor;
  }

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 3, 157),
        centerTitle: true,
        title: Text("Samoa"),
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(MdiIcons.arrowLeft)),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          print("Page ${index + 1}");
        },
        physics: BouncingScrollPhysics(),
        itemCount: _colorNames.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              player?.setAsset("assets/audio/colors/${_audioFiles[index]}.mp3");
              player?.play();
              print("Tapped");
            },
            splashColor: Colors.blueAccent,
            child: Ink(
              child: Container(
                color: _colors[index],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReuseTitleText(
                        text: _colorNames[index],
                        size: 60,
                        color: islight(index) ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      Icon(
                        MdiIcons.volumeHigh,
                        color: islight(index) ? Colors.black : Colors.white,
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        // children: [
        // Container(
        //   color: Colors.blue,
        //   child: Center(
        //     child: ReuseTitleText(
        //       text: 'Moana',
        //       size: 60,
        //       color: Colors.white,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        //   Container(
        //     color: Colors.green,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: 'Meamata',
        //         size: 60,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.red,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: 'Mumu',
        //         size: 60,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.purple,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: 'Viole',
        //         size: 60,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.pink,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: 'Piniki',
        //         size: 60,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.yellow,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: 'Samasama',
        //         size: 60,
        //         color: Colors.black,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.orange,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: 'Moli',
        //         size: 60,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.brown,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: "'Ena 'Ena",
        //         size: 60,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.white,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: "Pa'e Pa'e",
        //         size: 60,
        //         color: Colors.black,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.black,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: 'Uliuli',
        //         size: 60,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        //   Container(
        //     color: Colors.grey,
        //     child: Center(
        //       child: ReuseTitleText(
        //         text: "'Efu 'Efu",
        //         size: 60,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      // body: Container(
      //   //color: Color.fromARGB(255, 73, 0, 79),

      //   child: Stack(
      //     children: [
      //       RiveAnimation.asset(
      //         "assets/animations/background.riv",
      //         fit: BoxFit.cover,
      //       ),
      //       Center(
      //         child: Padding(
      //           padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      //           child: SingleChildScrollView(
      //             child: Column(
      //               children: [
      //                 SizedBox(
      //                   height: 20,
      //                 ),
      //                 ReuseText(
      //                   text: 'Colors',
      //                   size: 30,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.white,
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ReuseText(
      //                   text: 'Press the buttons to listen to the numbers.',
      //                   size: 18,
      //                   fontWeight: FontWeight.normal,
      //                   color: Color.fromARGB(255, 236, 109, 255),
      //                 ),
      //                 // Divider(
      //                 //   color: Color.fromARGB(255, 136, 0, 157),
      //                 // ),
      //                 SizedBox(
      //                   height: 30,
      //                 ),

      //                 // AnimationLimiter(
      //                 //     child: GridView.count(
      //                 //   physics: NeverScrollableScrollPhysics(),
      //                 //   shrinkWrap: true,
      //                 //   crossAxisCount: 2,
      //                 //   children: List.generate(10, (index) {
      //                 //     return AnimationConfiguration.staggeredGrid(
      //                 //       position: index,
      //                 //       columnCount: 2,
      //                 //       duration: const Duration(milliseconds: 500),
      //                 //       child: ScaleAnimation(
      //                 //         child: FadeInAnimation(
      //                 //           child: AudioButton(
      //                 //               player: player,
      //                 //               number: index + 1,
      //                 //               word: numlist[index].word,
      //                 //               audioFile: numlist[index].audioFile),
      //                 //         ),
      //                 //       ),
      //                 //     );
      //                 //   }),
      //                 // )),
      //                 SizedBox(
      //                   height: 50,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
