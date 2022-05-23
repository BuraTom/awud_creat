import 'package:flutter/material.dart';

class Uploads extends StatelessWidget {
  const Uploads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'All',
              child:const Center(
                child: Text('You have nothing Uploaded yet'),
              ),
            ),
            Tab(
              text: 'Music',
              child:const Center(
                child: Text('You have nothing Uploaded yet'),
              ),
            ),
            Tab(
              text: 'Podcast',
              child:const Center(
                child: Text('You have nothing Uploaded yet'),
              ),
            ),
            Tab(
              text: 'AudioBook',
              child:const Center(
                child: Text('You have nothing Uploaded yet'),
              ),
            )
          ],
        ),
      ),
    );
  }
}