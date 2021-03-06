import 'package:flutter/material.dart';
import 'package:awud_creat/classes/language_constants.dart';

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
                      title: Text(
                        translation(context).dash,
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
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                    text: translation(context).qu,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  TextSpan(
                                    text: translation(context).lp,
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
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      translation(context).mar,
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
                                        translation(context).tp,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      InkWell(
                                        onTap: () => {print('music')},
                                        child: Text(
                                          translation(context).va,
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
  Widget CustomContainerforQuickStats(icn, txt1, txt2) {
    return Container(
      height: 160.0,
      width: 160.0,
      // color: Color.fromARGB(255, 141, 78, 78)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 164, 58, 58)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Icon(Icons.abc, color: Color.fromRGBO(248, 135, 88, 1)),
          IconButton(
              onPressed: null,
              icon: icn,
              color: Color.fromARGB(255, 232, 95, 53)),
          Text(
            txt1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              // color: const Color.fromRGBO(248, 135, 88, 1)
            ),
          ),
          Text(
            txt2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              // color: const Color.fromRGBO(248, 135, 88, 1)
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Row(
        children: [
          CustomContainerforQuickStats(
              Icon(Icons.play_arrow), '40K', translation(context).pla),
          SizedBox(width: 12),
          // CustomContainerforQuickStats(
          //     Icon(Icons.person_add_outlined), '40K', 'Followers'),
          SizedBox(width: 12),
          CustomContainerforQuickStats(
              Icon(Icons.person), '40K', translation(context).lis),
          SizedBox(width: 12),
          CustomContainerforQuickStats(
              Icon(Icons.money), '40K', translation(context).me),
        ],
      ),
    );
  }
}

class Milestone extends StatelessWidget {
  const Milestone({Key? key}) : super(key: key);
  Widget CustomColumnforMilestone(img, txt) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: img,
          radius: 60,
        ),
        SizedBox(height: 10),
        Text(
          txt,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomColumnforMilestone(
                AssetImage('assets/images/play.png'), translation(context).pla),
            SizedBox(width: 10),
            CustomColumnforMilestone(
                AssetImage('assets/images/money.png'), translation(context).me),
            SizedBox(width: 10),
            CustomColumnforMilestone(AssetImage('assets/images/FavAdd.png'),
                translation(context).fav),
            SizedBox(width: 10),
            CustomColumnforMilestone(
                AssetImage('assets/images/playlistAdd.png'),
                translation(context).pa),
            SizedBox(width: 10),
            // CustomColumnforMilestone(
            //     AssetImage('assets/images/follow.png'), "Followers"),
          ],
        ),
      ),
    );
  }
}

class Performance extends StatelessWidget {
  const Performance({Key? key}) : super(key: key);
  Widget CustomContainerforPerformance(ct, pt, txt) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(ct).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.grey),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Row(children: [
                Image.asset(pt),
                SizedBox(width: 10),
                Text(txt),
              ]),
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomColumnforPerformance('20K ', translation(ct).pla),
              CustomColumnforPerformance('12K ', translation(ct).fav),
              CustomColumnforPerformance('14K ', translation(ct).lk),
              CustomColumnforPerformance('23K ', translation(ct).dws),
            ],
          ),
        ],
      ),
    );
  }

  Widget CustomColumnforPerformance(txt1, txt2) {
    return Column(
      children: [
        Text(
          txt1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Text(
          txt2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(top: 12, bottom: 12),
      child: Column(
        children: [
          CustomContainerforPerformance(
              context, 'assets/images/tkursew.jfif', 'TIKUR SEW\n Tedy Afro'),
          SizedBox(height: 10),
          CustomContainerforPerformance(
              context, 'assets/images/ethiopia.jfif', 'ETHIPIA\n Tedy Afro'),
          SizedBox(height: 10),
          CustomContainerforPerformance(context,
              'assets/images/yasteseryal.jfif', 'YASTESERYAL\n Tedy Afro'),
        ],
      ),
    );
  }
}
