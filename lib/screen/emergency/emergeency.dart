import 'package:flutter/material.dart';
import 'package:saharanpurcovidapp/screen/info_scren.dart';
import 'package:saharanpurcovidapp/report_mass.dart';
import 'package:saharanpurcovidapp/report_patient.dart';
import 'package:saharanpurcovidapp/volunteer_regen.dart';
import 'package:saharanpurcovidapp/donation.dart';
import 'package:saharanpurcovidapp/screen/contact.dart';
import 'package:saharanpurcovidapp/help.dart';
import 'package:saharanpurcovidapp/hotspot_list.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';

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
                Tab(
                  child: Center(child: Text('Doctor on Call')),
                ),
                Tab(
                  child: Center(child: Text('Contact an NGO')),
                ),
                Tab(
                  child: Center(child: Text('Contact')),
                ),
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  elevation: 5.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),

                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.local_phone),
                                          iconSize: 45,
                                          onPressed: () {
                                            FlutterPhoneState.startPhoneCall(
                                                '+919999999999');
                                          },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'CALL Doctor 1',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  elevation: 5.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),

                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.local_phone),
                                          iconSize: 45,
                                          onPressed: () {
                                            FlutterPhoneState.startPhoneCall(
                                                '+919999999999');
                                          },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'CALL Doctor 2',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  elevation: 5.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),

                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.local_phone),
                                          iconSize: 45,
                                          onPressed: () {
                                            FlutterPhoneState.startPhoneCall(
                                                '+919999999999');
                                          },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'CALL Doctor 3',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //,
                                  ),
                                ),
                              ],
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  elevation: 5.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),

                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.local_phone),
                                          iconSize: 45,
                                          onPressed: () {
                                            FlutterPhoneState.startPhoneCall(
                                                '+919999999999');
                                          },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'CALL NGO 1',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  elevation: 5.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),

                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.local_phone),
                                          iconSize: 45,
                                          onPressed: () {
                                            FlutterPhoneState.startPhoneCall(
                                                '+919999999999');
                                          },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'CALL NGO 2',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  elevation: 5.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),

                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.local_phone),
                                          iconSize: 45,
                                          onPressed: () {
                                            FlutterPhoneState.startPhoneCall(
                                                '+919999999999');
                                          },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'CALL NGO 3',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //,
                                  ),
                                ),
                              ],
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
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  elevation: 5.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),

                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.local_phone),
                                          iconSize: 45,
                                          onPressed: () {
                                            FlutterPhoneState.startPhoneCall(
                                                '+919999999999');
                                          },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'CALL District Helpline',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  elevation: 5.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),

                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.local_phone),
                                          iconSize: 45,
                                          onPressed: () {
                                            FlutterPhoneState.startPhoneCall(
                                                '+919999999999');
                                          },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'CALL State Helpline',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  elevation: 5.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),

                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.local_phone),
                                          iconSize: 45,
                                          onPressed: () {
                                            FlutterPhoneState.startPhoneCall(
                                                '+919999999999');
                                          },
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'CALL National Helpline',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
                      Text(
                        'SAHARANPUR',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Covid-19 Help',
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
                  onTap: () {
                    Navigator.pushNamed(context, Volunteer.id);
                  },
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
