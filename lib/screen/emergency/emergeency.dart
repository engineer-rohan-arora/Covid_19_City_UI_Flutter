import 'package:flutter/material.dart';
import 'package:saharanpurcovidapp/screen/info_scren.dart';
import 'package:saharanpurcovidapp/report_mass.dart';
import 'package:saharanpurcovidapp/report_patient.dart';
import 'package:saharanpurcovidapp/volunteer_regen.dart';
import 'package:saharanpurcovidapp/donation.dart';
import 'package:saharanpurcovidapp/screen/contact.dart';
import 'package:saharanpurcovidapp/help.dart';
import 'package:saharanpurcovidapp/hotspot_list.dart';

class Emergency extends StatefulWidget {
  static const String id = 'emergency_screen';
  @override
  _Emergency createState() => _Emergency();
}
class _Emergency extends State<Emergency> {

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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Center(child: Text('Report A Patient')),),
                Tab(child: Center(child: Text('Help')),),
                Tab(child: Center(child: Text('Contact')),),
              ],
            ),
            title: const Text('Emergency'),
            actions: <Widget>[
              // action button
              IconButton(
                icon: Icon(Icons.local_phone),
                onPressed: () => Navigator.pushNamed(context, Contact.id),
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
              SingleChildScrollView(
                controller: controller,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter your Name'
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter your Email-id'
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Your Contact Number'
                            ),
                          ),
                          SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: RaisedButton(
                              color: Colors.blueAccent,
                              onPressed: () {},
                              child: Text('Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                controller: controller,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter your Name'
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter your Contact Number'
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Your Address'
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter The Problem Faced'
                            ),
                          ),
                          SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: RaisedButton(
                              color: Colors.blueAccent,
                              onPressed: () {},
                              child: Text('Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                  child: Text('Contact'))
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
