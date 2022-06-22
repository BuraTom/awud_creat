// import 'dart:convert';

// //import 'package:awud_creat/views/infopageAudioBook.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import '../main.dart';

// class Uploads extends StatefulWidget {
//   final String name;
//   const Uploads({Key? key, required this.name}) : super(key: key);

//   @override
//   State<Uploads> createState() => _UploadsState();
// }

// class _UploadsState extends State<Uploads> {
//   var result;
//   List? playlist = [];
//   List? episodes;
//   var num = 0;

//   Future printValue() async {
//     var response = await http.get(Uri.parse('http://$IpAddresse:8000/music'));
//     // var response = await http
//     //     .get(Uri.parse('http://${IpAddresse}:8000/music/user/${widget.name}'));

//     if (response.statusCode == 200) {
//       result = json.decode(response.body);
//       return result;
//     }
//   }

//   Widget InfoPageAudioBook(name) {
//     return Container(
//         child: FutureBuilder(
//             future: printValue(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.none &&
//                   snapshot.hasData == null) {
//                 return Container(
//                   child: Text('No Data'),
//                 );
//               } else if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Container(
//                     child: Center(
//                   child: CircularProgressIndicator(
//                     color: Color.fromRGBO(248, 135, 88, 1),
//                   ),
//                 ));
//               } else {
//                 return ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: result!.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         margin: EdgeInsets.all(10),
//                         child: Column(
//                           children: [
//                             Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text(
//                                 "${result!.length} music",
//                                 style: TextStyle(
//                                     fontSize: 16, color: Colors.black54),
//                               ),
//                             ),
//                             // Row(
//                             //   children: [
//                             //     Align(
//                             //       alignment: Alignment.centerLeft,
//                             //       child: Text(
//                             //         "${result![index]['title']} - ",
//                             //         style: TextStyle(
//                             //             fontSize: 18,
//                             //             fontWeight: FontWeight.bold),
//                             //       ),
//                             //     ),
//                             //     Align(
//                             //       alignment: Alignment.centerLeft,
//                             //       child: Text(
//                             //         "${result!.length} music",
//                             //         style: TextStyle(
//                             //             fontSize: 16, color: Colors.black54),
//                             //       ),
//                             //     ),
//                             //     SizedBox(height: 50)
//                             //   ],
//                             // ),
//                             Column(
//                               children: [
//                                 Container(
//                                   height: 400,
//                                   child: FutureBuilder(
//                                       future: printValue(),
//                                       builder: (context, snapshot) {
//                                         if (snapshot.connectionState ==
//                                                 ConnectionState.none &&
//                                             snapshot.hasData == null) {
//                                           return Container(
//                                             child: Text('No Data'),
//                                           );
//                                         } else if (snapshot.connectionState ==
//                                             ConnectionState.waiting) {
//                                           return Container(
//                                               child: Center(
//                                             child: CircularProgressIndicator(
//                                               color: Color.fromRGBO(
//                                                   248, 135, 88, 1),
//                                             ),
//                                           ));
//                                         } else {
//                                           return ListView.builder(
//                                               // shrinkWrap: true,
//                                               scrollDirection: Axis.vertical,
//                                               itemCount: result == null
//                                                   ? 0
//                                                   : result!.length,
//                                               itemBuilder:
//                                                   (BuildContext context,
//                                                       int x) {
//                                                 return Container(
//                                                   child: Column(
//                                                     children: [
//                                                       Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .spaceBetween,
//                                                         children: [
//                                                           SizedBox(
//                                                             width: 100,
//                                                             height: 100,
//                                                             child: ClipRRect(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           5),
//                                                               child: Stack(
//                                                                   alignment:
//                                                                       Alignment
//                                                                           .center,
//                                                                   children: [
//                                                                     Image
//                                                                         .network(
//                                                                       // 'http://$IpAddresse:8000${music![index]['image']}',
//                                                                       // jsonData![index]['image'],
//                                                                       'http://$IpAddresse:8000${result![index]['image']}',
//                                                                       height:
//                                                                           150,
//                                                                       width:
//                                                                           100,
//                                                                       fit: BoxFit
//                                                                           .fill,
//                                                                     ),
//                                                                     // Image.asset(
//                                                                     //   "${result![0]['image']}",
//                                                                     //   fit: BoxFit.fill,
//                                                                     // ),
//                                                                     // addToPlaylist(result![0]['Chapters'][x]['chapter_audio']),
//                                                                     // FaIcon(
//                                                                     //   FontAwesomeIcons
//                                                                     //       .play,
//                                                                     //   color: Colors
//                                                                     //       .white,
//                                                                     // ),
//                                                                   ]),
//                                                             ),
//                                                           ),
//                                                           SizedBox(width: 60),
//                                                           Flexible(
//                                                             child: Column(
//                                                               crossAxisAlignment:
//                                                                   CrossAxisAlignment
//                                                                       .start,
//                                                               children: [
//                                                                 //"${result![index]['title']} - ",
//                                                                 Text(
//                                                                   "${result![index]['title']}",
//                                                                   style: TextStyle(
//                                                                       fontSize:
//                                                                           15,
//                                                                       color: Colors
//                                                                           .black54),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           )
//                                                         ],
//                                                       ),
//                                                       SizedBox(height: 20)
//                                                     ],
//                                                   ),
//                                                 );
//                                               });
//                                         }
//                                       }),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       );
//                     });
//               }
//             }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           body: SafeArea(
//             child: NestedScrollView(
//               floatHeaderSlivers: true,
//               headerSliverBuilder: (context, innerBoxIsScrolled) => [
//                 SliverOverlapAbsorber(
//                   handle:
//                       NestedScrollView.sliverOverlapAbsorberHandleFor(context),
//                   sliver: SliverAppBar(
//                     elevation: 0,
//                     backgroundColor: Colors.white,
//                     title: const Text(
//                       "Uploads",
//                       style: TextStyle(
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black),
//                     ),
//                     bottom: TabBar(
//                       labelColor: Color.fromRGBO(248, 135, 88, 1),
//                       unselectedLabelColor: Colors.black54,
//                       indicatorColor: Color.fromRGBO(248, 135, 88, 1),
//                       indicatorWeight: 3,
//                       tabs: [
//                         Tab(
//                           text: 'All',
//                         ),
//                         Tab(
//                           text: 'Music',
//                         ),
//                         Tab(
//                           text: 'Podcast',
//                         ),
//                         Tab(
//                           text: 'AudioBook',
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//               body: SafeArea(
//                 child: TabBarView(children: [
//                   InfoPageAudioBook('Aster Aweke'),
//                   InfoPageAudioBook('Aster Aweke'),
//                   // Center(
//                   //   child: Text('You have no Music Uploaded yet'),
//                   // ),
//                   Center(
//                     child: Text('You have no podcast Uploaded yet'),
//                   ),
//                   //  InfoPageAudioBook(id: 'id', name: 'name'),
//                   Center(
//                     child: Text('You have no Audiobook Uploaded yet'),
//                   ),
//                 ]),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';

// import 'package:awud_app/class/audio_file.dart';
import '../main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:http/http.dart' as http;

class albumPage extends StatefulWidget {
  final String name;
  //final String image;

  albumPage({Key? key, required this.name}) : super(key: key);

  @override
  _albumPageState createState() => _albumPageState();
}

class _albumPageState extends State<albumPage> {
  List? music;

  Future getMusic() async {
    var response = await http
        .get(Uri.parse('http://$IpAddresse:8000/music/user/${widget.name}'));

    if (response.statusCode == 200) {
      music = json.decode(response.body);
      return music;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                // Stack(
                //   alignment: Alignment.bottomCenter,
                //   children: [
                //     // Image.network('http://$IpAddresse:8000${widget.image}'),
                //     Text(
                //       'Aster Aweke',
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 40,
                //           color: Colors.white),
                //     ),
                //   ],
                // ),
                Text(
                  "Aster Aweke",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white),
                ),

                SizedBox(height: 20),
                FutureBuilder(
                  future: getMusic(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.none &&
                        snapshot.hasData == null) {
                      return Container(
                        child: Text('No Data'),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return Container(
                          child: Center(
                        child: CircularProgressIndicator(
                          color: Color.fromRGBO(248, 135, 88, 1),
                        ),
                      ));
                    } else {
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: music == null ? 0 : music!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.all(15),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // MyAppp(id: id, current: current, playlist: playlist, image: image, title: title)
                                      },
                                      child: Row(
                                        children: [
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  child: Image.network(
                                                    'http://$IpAddresse:8000${music![index]['image']}',
                                                    height: 100,
                                                    width: 100,
                                                    fit: BoxFit.fill,
                                                  )),
                                              Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                                size: 50,
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 25),
                                          Column(
                                            children: [
                                              Text(
                                                music![index]['title'],
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                widget.name,
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 5),
                                      color: Colors.grey,
                                      height: 1,
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
