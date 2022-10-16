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
      ),
    );
  }
}
