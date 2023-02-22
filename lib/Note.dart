import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Note {
  final MaterialColor noteColor;
  final String assetSrcString;
  Note({
    required this.noteColor,
    required this.assetSrcString,
  });

  TextButton getButtonWithColorAndAudio() {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.all(3.0)),
      onPressed: () async {
        await AudioPlayer().play(AssetSource(assetSrcString));
      },
      child: Container(
        color: noteColor,
      ),
    );
  }
}
