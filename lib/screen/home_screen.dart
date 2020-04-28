import 'package:flutter/material.dart';
import 'widget/my_header.dart';
import 'package:saharanpurcovidapp/constant.dart';
import 'widget/counter.dart';
import 'package:saharanpurcovidapp/screen/info_scren.dart';
import 'contact.dart';
import 'package:saharanpurcovidapp/report_patient.dart';
import 'package:saharanpurcovidapp/hotspot_list.dart';
import 'package:saharanpurcovidapp/help.dart';
import 'package:saharanpurcovidapp/donation.dart';
import 'package:saharanpurcovidapp/report_mass.dart';
import 'package:saharanpurcovidapp/volunteer_regen.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final controller = ScrollController();
  double offset = 0;
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Covid Help'),
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(Icons.local_phone),
              onPressed: () {
                Navigator.pushNamed(context, Contact.id);
              },
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                Navigator.pushNamed(context, Info.id);
              },
            ),
            // action button
            // overflow menu
          ],
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              MyHeader(
                image: "assets/icons/Drcorona.svg",
                textTop: "All you need",
                textBottom: "is stay at home.",
                offset: offset,
              ),

              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 30,
                      color: kShadowColor,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Counter(
                      color: kInfectedColor,
                      number: 159,
                      title: "Infected",
                    ),
                    Counter(
                      color: kDeathColor,
                      number: 0,
                      title: "Deaths",
                    ),
                    Counter(
                      color: kRecovercolor,
                      number: 0,
                      title: "Recovered",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Center(child: Text("Announcements", style: kTitleTextstyle)),
                    SizedBox(height: 20),
                    PreventCard(
                      text:
                      "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",

                      title: "Wear face mask",
                    ),
                    PreventCard(
                      text:
                      "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",

                      title: "Wash your hands",
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              )
            ],
          ),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Text('SAHARANPUR',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text('Covid-19 Help',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Report Mass Gathering'),
                onTap: () {
                  Navigator.pushNamed(context, ReportMass.id);
                },
              ),
              ListTile(
                title: Text('Report A Patient'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, ReportPatient.id);
                },
              ),
              ListTile(
                title: Text('Volunteer Registeration'),
                onTap: () {Navigator.pushNamed(context, Volunteer.id);},
              ),
              ListTile(
                title: Text('Donation'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, Donation.id);
                },
              ),
              ListTile(
                title: Text('Hotspot List'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, HotSpot.id);
                },
              ),
              ListTile(
                title: Text('Help'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, Help.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}
class PreventCard extends StatelessWidget {
  final String title;
  final String text;
  const PreventCard({
    Key key,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 160,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
            Positioned(

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 140,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

