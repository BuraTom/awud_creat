import 'package:awud_creat/views/Dashboard.dart';
import 'package:awud_creat/views/Notification.dart';
import 'package:awud_creat/views/Upload.dart';
import 'package:awud_creat/views/Stats.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Artist extends StatefulWidget {
  Artist({Key? key}) : super(key: key);

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  var _index = 0;

  final screens = [
    const DashBoard(),
    const Stats(),
    const Uploads(),
    const Notifications(),
  ];

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // themeMode: ThemeMode.dark,
        // theme: ThemeData(
        //     scaffoldBackgroundColor: Colors.white,
        //     colorScheme: ColorScheme.light(),
        //     appBarTheme: AppBarTheme(
        //       backgroundColor: Colors.blue,
        //     )),
        // darkTheme: ThemeData(
        //     scaffoldBackgroundColor: Colors.black,
        //     colorScheme: ColorScheme.dark(),
        //     appBarTheme: AppBarTheme(
        //       backgroundColor: Colors.black,
        //     )),
        home: Scaffold(
          // backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          body: PageView.builder(
              itemCount: 4,
              controller: controller,
              onPageChanged: (page) {
                setState(() {
                  _index = page;
                });
              },
              itemBuilder: (context, position) {
                return Container(
                  child: screens[_index],
                );
              }),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(5),
            child: GNav(
              gap: 8,
              activeColor: Colors.white,
              tabBackgroundColor: const Color.fromRGBO(248, 135, 88, 1),
              padding: const EdgeInsets.all(10),
              tabs: const [
                GButton(
                  icon: Icons.dashboard,
                  text: "DashBoard",
                ),
                GButton(icon: Icons.query_stats, text: "Stats"),
                GButton(icon: Icons.upload, text: "Uploads"),
                GButton(icon: Icons.notifications, text: "Notification"),
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
                controller.jumpToPage(index);
              },
            ),
          ),
        ));
  }
}
