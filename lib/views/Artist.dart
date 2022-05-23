import 'package:awud_creat/views/Dashboard.dart';
import 'package:awud_creat/views/Notification.dart';
import 'package:awud_creat/views/Upload.dart';
import 'package:awud_creat/views/Stats.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Artist extends StatelessWidget {
   Artist({Key? key}) : super(key: key);
  int index = 0.obs as int;

  final screens = [
    const DashBoard(),
    const Stats(),
    const Uploads(),
    const Notifications(),
  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
          body: PageView.builder(
              itemCount: 4,
              controller: controller,
              itemBuilder: (context,position){
                return Container(
                  child: screens[index],
                );
              }
          ),
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
              GButton(
                  icon:Icons.query_stats,
                  text: "Stats"
              ),
              GButton(
                  icon:Icons.upload,
                  text: "Uploads"
              ),
              GButton(
                  icon:Icons.notifications,
                  text: "Notification"
              ),
            ],
            selectedIndex: index,
            onTabChange: (index){
              controller.jumpToPage(index);
            },
          ),
        ),
    )
    );
  }
}








