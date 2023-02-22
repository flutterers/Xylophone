import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'Note.dart';

class NoteBuilder extends StatelessWidget {
  final List<Expanded> noteElements = [];
  final List<MaterialColor> noteColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  final audioFileStringBase = "assets_note";

  NoteBuilder({Key? key}) : super(key: key) {
    var noteCounter = 0;
    for (var noteColor in noteColors) {
      noteCounter++;
      Note note = Note(
        noteColor: noteColor,
        assetSrcString: "$audioFileStringBase$noteCounter.wav",
      );
      noteElements.add(
        Expanded(
          child: note.getButtonWithColorAndAudio(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: noteElements,
    );
  }
}
