import 'package:flutter/material.dart';
import 'package:xylo/NoteBuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: XylophonePage(),
      ),
    );
  }
}

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key? key}) : super(key: key);

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NoteBuilder(),
      // child: Column(
      //   children: [
      //     Expanded(
      //       child: Container(
      //         color: Colors.red,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         color: Colors.orange,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         color: Colors.green,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         color: Colors.indigo,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         color: Colors.purple,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
