import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);
  Widget SliverOverlapAbsorberr(BuildContext context){
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
          leading: const Drawer(
            child:CircleAvatar(
              radius: 20.0,
              backgroundColor: Color(0xFF778899),
              backgroundImage:
              AssetImage("assets/images/tedy.jpg"),
            ),

          ),
          elevation: 0,

          backgroundColor:  Color.fromRGBO(248, 135, 88, 1),
          title: const Text(
            "DashBoard",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          actions:[
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                icon: Icon(Get.isDarkMode? Icons.dark_mode: Icons.light_mode),
                onPressed:  ()=>Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark()),
                color: Colors.black,
                iconSize: 20.0,
              ),


            ),
          ]

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: NestedScrollView(
            floatHeaderSlivers:true,
            headerSliverBuilder: (context, innerBoxIsScrolled) =>[
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                    leading: const Drawer(
                      child:CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Color(0xFF778899),
                        backgroundImage:
                        AssetImage("assets/images/tedy.jpg"),
                      ),

                    ),
                    elevation: 0,

                    backgroundColor:  Color.fromRGBO(248, 135, 88, 1),
                    title: const Text(
                      "DashBoard",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    actions:[
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: IconButton(
                          icon: Icon(Get.isDarkMode? Icons.dark_mode: Icons.light_mode),
                          onPressed:  ()=>Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark()),
                          color: Colors.black,
                          iconSize: 20.0,
                        ),


                      ),
                    ]

                ),
              ),
            ],

            body: SafeArea(
                child: Container(
                  //color: Colors.white,
                    margin: const EdgeInsets.only(left: 5,right: 5),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20,left: 5),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child:  RichText(
                                    text: const TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'QUICK STATS',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                            ),
                                          ),
                                          TextSpan(text: ' Last 7 days(Estimated)',
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 10),
                                          )
                                        ]
                                    ),
                                  ),

                                ),
                              ),
                              QuickStats(),

                              Container(
                                margin: const EdgeInsets.only(top: 40),
                                child: Column(
                                  children: [
                                    Container(
                                      margin:EdgeInsets.only(left: 5),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("MILESTONES & ACHIEVEMENTS",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        ),
                                      ),
                                    ),
                                    Milestone(),
                                  ],
                                ),
                              ),

                            ]
                        )
                    )
                )
            )
        )
    );
  }
}

class QuickStats extends StatelessWidget {
  const QuickStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Card(
              child: GestureDetector(
                onTap: (){
                  print("hello");
                },
                child: Stack(
                    alignment:Alignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Column(
                            children: [
                              IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
                              Text('12K'),
                              Text('PLAYS')
                            ],
                          )
                      ),

                    ]
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Card(
              child: GestureDetector(
                onTap: (){
                  print("hello");
                },
                child: Stack(
                    alignment:Alignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Column(
                            children: [
                              IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
                              Text('12K'),
                              Text('FOLLOWERS')
                            ],
                          )
                      ),

                    ]
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Card(
              child: GestureDetector(
                onTap: (){
                  print("hello");
                },
                child: Stack(
                    alignment:Alignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Column(
                            children: [
                              IconButton(onPressed: null, icon: Icon(Icons.play_arrow)),
                              Text('123K'),
                              Text('LISTENERS')
                            ],
                          )
                      ),

                    ]
                ),
              ),
            ),
          ],
        ),
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
                  onTap:(){
                    print('HI');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Mill.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10),
                Text("1 Million Plays",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                GestureDetector(
                  onTap:(){
                    print('HI');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/FavAdd.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10),
                Text("Favourites",
                    style: TextStyle(
                        fontSize: 15
                    )
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                GestureDetector(
                  onTap:(){
                    print('HI');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/playlistAdd.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10),
                Text("PlayList Adds",
                    style: TextStyle(
                        fontSize: 15
                    )
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                GestureDetector(
                  onTap:(){
                    print('HI');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/follow.png'),
                    radius: 60,
                  ),
                ),
                SizedBox(height: 10),
                Text("Followers",
                    style: TextStyle(
                        fontSize: 15
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}