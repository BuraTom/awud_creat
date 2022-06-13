import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverAppBar(
                      // leading: const Drawer(
                      //   child: CircleAvatar(
                      //     radius: 20.0,
                      //     backgroundColor: Color(0xFF778899),
                      //     backgroundImage: AssetImage("assets/images/tedy.jpg"),
                      //   ),
                      // ),
                      //  elevation: 0,
                      // backgroundColor: Color.fromRGBO(248, 135, 88, 1),
                      title: const Text(
                        "DashBoard",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      // actions: [
                      //   Padding(
                      //     padding: EdgeInsets.only(right: 20),
                      //     child: IconButton(
                      //       icon: Icon(Get.isDarkMode
                      //           ? Icons.dark_mode
                      //           : Icons.light_mode),
                      //       onPressed: () => Get.changeTheme(Get.isDarkMode
                      //           ? ThemeData.light()
                      //           : ThemeData.dark()),
                      //       color: Colors.black,
                      //       iconSize: 20.0,
                      //     ),
                      //   ),
                      // ]
                    ),
                  ),
                ],
            body: SafeArea(
                child: Container(
                    //color: Colors.white,
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                text: const TextSpan(children: <TextSpan>[
                                  TextSpan(
                                    text: 'QUICK STATS',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  TextSpan(
                                    text: ' Last 7 days(Estimated)',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  )
                                ]),
                              ),
                            ),
                          ),
                          QuickStats(),
                          Divider(
                            color: Colors.black,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 40),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "MILESTONES & ACHIEVEMENTS",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                Milestone(),
                                Divider(
                                  color: Colors.black,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "TOP PERFORMING CONTENTS",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      InkWell(
                                        onTap: () => {print('music')},
                                        child: Text(
                                          "VIEW ALL",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color:
                                                Color.fromRGBO(248, 135, 88, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Performance(),
                              ],
                            ),
                          ),
                        ]))))));
  }
}

class QuickStats extends StatelessWidget {
  const QuickStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Row(
        children: [
          Container(
            height: 160.0,
            width: 160.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
                Text(
                  '10K',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    // color: const Color.fromRGBO(248, 135, 88, 1)
                  ),
                ),
                Text(
                  'Plays',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    // color: const Color.fromRGBO(248, 135, 88, 1)
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 12),
          Container(
            height: 160.0,
            width: 160.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.person_add_outlined,
                      color: Colors.black,
                    )),
                Text(
                  '11K',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    //color: const Color.fromRGBO(248, 135, 88, 1)
                  ),
                ),
                Text(
                  'Followers',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                )
              ],
            ),
          ),
          SizedBox(width: 12),
          Container(
            height: 160.0,
            width: 160.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.person)),
                Text(
                  '10K',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text('Listeners',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))
              ],
            ),
          ),
          SizedBox(width: 12),
          Container(
            height: 160.0,
            width: 160.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.money)),
                Text(
                  '10K',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text('Money Earned',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Milestone extends StatelessWidget {
  const Milestone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('HI');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Mill.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "1 Million Plays",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('HI');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/money.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10),
                Text("Money earned", style: TextStyle(fontSize: 15)),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('HI');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/FavAdd.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10),
                Text("Favourites", style: TextStyle(fontSize: 15)),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('HI');
                  },
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/playlistAdd.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10),
                Text("PlayList Adds", style: TextStyle(fontSize: 15)),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('HI');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/follow.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10),
                Text("Followers", style: TextStyle(fontSize: 15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Performance extends StatelessWidget {
  const Performance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(top: 12, bottom: 12),
      child: Column(
        children: [
          Container(
            height: 100.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Row(children: [
                      Image.asset('assets/images/tkursew.jfif'),
                      SizedBox(width: 10),
                      Text('TIKUR SEW\n Tedy Afro'),
                    ]),
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'PLAYS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Favs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        ),
                        Text(
                          'likes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        )
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        ),
                        Text(
                          'downloads',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 100.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Row(children: [
                      Image.asset('assets/images/ethiopia.jfif'),
                      SizedBox(width: 10),
                      Text('ETHIPIA\n Tedy Afro'),
                    ]),
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'PLAYS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Favs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        ),
                        Text(
                          'likes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        )
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        ),
                        Text(
                          'downloads',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 100.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.grey),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: Row(children: [
                      Image.asset('assets/images/yasteseryal.jfif'),
                      SizedBox(width: 10),
                      Text('YASTESERYAL\n Tedy Afro'),
                    ]),
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'PLAYS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Favs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        ),
                        Text(
                          'likes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        )
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
                        Text(
                          '10K ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        ),
                        Text(
                          'downloads',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            // color: const Color.fromRGBO(248, 135, 88, 1)
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
