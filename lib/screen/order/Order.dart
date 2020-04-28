import 'package:flutter/material.dart';
import 'package:saharanpurcovidapp/screen/info_scren.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';
import 'package:saharanpurcovidapp/help.dart';
import 'package:saharanpurcovidapp/report_mass.dart';
import 'package:saharanpurcovidapp/report_patient.dart';
import 'package:saharanpurcovidapp/volunteer_regen.dart';
import 'package:saharanpurcovidapp/donation.dart';
import 'package:saharanpurcovidapp/hotspot_list.dart';

class Order extends StatefulWidget {
  static const String id = 'order_screen';
  @override
  _Order createState() => _Order();
}

class _Order extends State<Order> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Center(child: Text('Food Items')),),
                Tab(child: Center(child: Text('Medicine')),),

              ],
            ),
            title: const Text('Order'),
            actions: <Widget>[
              // action button
              IconButton(
                icon: Icon(Icons.local_phone),
                onPressed: () => FlutterPhoneState.startPhoneCall('+919999999999'),
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
          body: TabBarView(
            children: [
              Center
                (child: Text('Food Items')),
              Center(
                  child: Text('Medicine')),

            ],
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
      ),
    );
  }
}
