import 'package:awud_creat/classes/language_constants.dart';
import 'package:flutter/material.dart';

class Contents extends StatefulWidget {
  const Contents({Key? key}) : super(key: key);

  @override
  State<Contents> createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(translation(context).con),
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Container();
        }));
  }
}
