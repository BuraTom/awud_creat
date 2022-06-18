import 'package:awud_creat/views/Dashboard.dart';
import 'package:awud_creat/views/home_page.dart';
import 'package:awud_creat/views/settings.dart';
import 'package:awud_creat/views/Upload.dart';
import 'package:awud_creat/views/Stats.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:awud_creat/classes/language_constants.dart';

class Artist extends StatefulWidget {
  Artist({Key? key}) : super(key: key);

  @override
  State<Artist> createState() => _ArtistState();
  static void setLocale(BuildContext context, Locale newLocale) {
    _ArtistState? state = context.findAncestorStateOfType<_ArtistState>();
    state?.setLocale(newLocale);
  }
}

class _ArtistState extends State<Artist> {
  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => {setLocale(locale)});
    super.didChangeDependencies();
  }

  var _index = 0;
  final screens = [
    const DashBoard(),
    Stats(),
    const Uploads(),
    // HomePage(),
    Setting(),
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
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: _locale,
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
                GButton(icon: Icons.settings, text: "Settings"),
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
