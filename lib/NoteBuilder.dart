import 'package:flutter/material.dart';

class NoteBuilder extends StatelessWidget {
  NoteBuilder({Key? key}) : super(key: key) {
    for (var noteColor in noteColors) {
      noteElements.add(
        Expanded(
          child: Container(color: noteColor),
        ),
      );
    }
  }
  List<Expanded> noteElements = [];

  final List<MaterialColor> noteColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: noteElements,
    );
  }
}
