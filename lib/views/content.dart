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
          title: Text('Contents'),
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Container();
        }));
  }
}
