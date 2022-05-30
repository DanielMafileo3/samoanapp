// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:just_audio/just_audio.dart';

class AudioButton extends StatefulWidget {
  final AudioPlayer? player;
  final String word;
  final int number;
  final String audioFile;

  const AudioButton(
      {Key? key,
      required this.player,
      required this.number,
      required this.word,
      required this.audioFile})
      : super(key: key);

  @override
  State<AudioButton> createState() => _AudioButtonState();
}

class _AudioButtonState extends State<AudioButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 8,
            onPrimary: Color.fromARGB(255, 236, 109, 255),
            primary: Color.fromARGB(255, 147, 3, 157),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: () async {
          await widget.player
              ?.setAsset("assets/audio/numbers/" + widget.audioFile + ".mp3");
          widget.player?.play();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.number.toString(), style: TextStyle(fontSize: 30)),
            Text(widget.word, style: TextStyle(fontSize: 30))
          ],
        ),
      ),
    );
  }
}
