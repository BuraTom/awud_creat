import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Uploads extends StatefulWidget {
  const Uploads({Key? key}) : super(key: key);

  @override
  State<Uploads> createState() => _UploadsState();
}

class _UploadsState extends State<Uploads> {
  //   List? ArtistMusic;

  // Future AMusic() async{
  //   var response = await http.get(Uri.parse('http://192.168.1.7:5000/music/artist_name'));

  //   if(response.statusCode == 200){
  //     ArtistMusic = json.decode(response.body);
  //     return ArtistMusic;
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: SafeArea(
            child: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    title: const Text(
                      "Uploads",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    bottom: TabBar(
                      labelColor: Color.fromRGBO(248, 135, 88, 1),
                      unselectedLabelColor: Colors.black54,
                      indicatorColor: Color.fromRGBO(248, 135, 88, 1),
                      indicatorWeight: 3,
                      tabs: [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: 'Music',
                        ),
                        Tab(
                          text: 'Podcast',
                        ),
                        Tab(
                          text: 'AudioBook',
                        )
                      ],
                    ),
                  ),
                )
              ],
              body: SafeArea(
                child: TabBarView(children: [
                  Center(
                    child: Text('You have nothing Uploaded yet'),
                  ),
                  Center(
                    child: Text('You have no Music Uploaded yet'),
                  ),
                  Center(
                    child: Text('You have no Podcast Uploaded yet'),
                  ),
                  Center(
                    child: Text('You have no Audiobook Uploaded yet'),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class ArtistAll {
//   final String name;
//   final String catagory;
//   ArtistAll(this.name, this.catagory);
// }
