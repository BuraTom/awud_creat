import 'package:awud_creat/classes/language.dart';
import 'package:awud_creat/classes/language_constants.dart';
import 'package:awud_creat/views/Artist.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool chan = false;

  changed(bool newval) {
    setState(() {
      chan = newval;
    });
    // setState() {
    //   chan = newval;
    // }
  }

  _launchURLApp() async {
    const url = 'https://google.com/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget Accoountsettings(BuildContext context, String name) {
    return GestureDetector(
      onTap: () => {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(translation(context).lan),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<Language>(
                    underline: const SizedBox(),
                    icon: const Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    onChanged: (Language? language) async {
                      if (language != null) {
                        Locale _locale = await setLocale(language.languageCode);
                        Artist.setLocale(context, _locale);
                      }
                    },
                    items: Language.languageList()
                        .map<DropdownMenuItem<Language>>(
                          (e) => DropdownMenuItem<Language>(
                            value: e,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                // Text(
                                //   e.flag,
                                //   style: const TextStyle(fontSize: 30),
                                // ),
                                Text(e.name)
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              );
            })
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: TextStyle(fontSize: 20, color: Colors.grey[600])),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget switchsettings(String name, bool val, Function change) {
    return GestureDetector(
      onTap: () => {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: TextStyle(fontSize: 20, color: Colors.grey[600])),
            Transform.scale(
                scale: 0.7,
                child: Switch(
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.orangeAccent,
                    // trackColor: Colors.orangeAccent,
                    value: val,
                    onChanged: (bool newv) {
                      change(newv);
                    })),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(translation(context).st),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  Icon(Icons.person, color: Colors.blueGrey),
                  SizedBox(width: 10),
                  Text(translation(context).acc, style: TextStyle(fontSize: 18))
                ],
              ),
              Divider(
                height: 20,
                thickness: 10,
              ),
              SizedBox(height: 10),
              Accoountsettings(context, translation(context).chu),
              Accoountsettings(context, translation(context).chp),
              // SizedBox(height: 10),
              Divider(
                height: 20,
                thickness: 10,
              ),
              Accoountsettings(context, translation(context).chl),
              switchsettings(translation(context).dt, chan, changed),
              Divider(
                height: 20,
                thickness: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(translation(context).ur,
                        style:
                            TextStyle(fontSize: 20, color: Colors.grey[600])),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      color: Colors.grey,
                      onPressed: _launchURLApp,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: OutlinedButton(
                  onPressed: () => {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: Text(
                    translation(context).so,
                    style: TextStyle(fontSize: 16, color: Colors.orangeAccent),
                  ),
                ),
              )
              //Accoountsettings(context, 'Account Password'),
            ],
          ),
        ));
  }
}
