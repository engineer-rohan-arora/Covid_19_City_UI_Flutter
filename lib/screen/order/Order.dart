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
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Center(child: Text('Groceries')),
                ),
                Tab(
                  child: Center(child: Text('Medicine')),
                ),
              ],
            ),
            title: const Text('Order'),
            actions: <Widget>[
              // action button
              IconButton(
                icon: Icon(Icons.local_phone),
                onPressed: () =>
                    FlutterPhoneState.startPhoneCall('+919999999999'),
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
                child: Column(
                  children: <Widget>[
                    OrderGroceries(
                      title: 'Name Of Shop',
                      area: 'Address',
                      timigs: '8:00 - 12:00',
                      delivery: 'yes',
                      cno: '998965',
                    ),
                    OrderGroceries(
                      title: 'Name Of Shop',
                      area: 'Address',
                      timigs: '8:00 - 12:00',
                      delivery: 'yes',
                      cno: '998965',
                    ),
                    OrderGroceries(
                      title: 'Name Of Shop',
                      area: 'Address',
                      timigs: '8:00 - 12:00',
                      delivery: 'yes',
                      cno: '998965',
                    ),
                    OrderGroceries(
                      title: 'Name Of Shop',
                      area: 'Address',
                      timigs: '8:00 - 12:00',
                      delivery: 'yes',
                      cno: '998965',
                    ),
                  ],
                ),
                //FoodDistribution(text: 'Descreption',title: 'Title', timigs: 'Timing',area: 'Address', organiser: 'Organiser',)
              ),
              SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: <Widget>[
                    OrderMedicine(
                      title: 'Name Of Shop',
                      area: 'Address',
                      timigs: '8:00 - 12:00',
                      delivery: 'yes',
                      cno: '998965',
                    ),
                    OrderMedicine(
                      title: 'Name Of Shop',
                      area: 'Address',
                      timigs: '8:00 - 12:00',
                      delivery: 'yes',
                      cno: '998965',
                    ),
                    OrderMedicine(
                      title: 'Name Of Shop',
                      area: 'Address',
                      timigs: '8:00 - 12:00',
                      delivery: 'yes',
                      cno: '998965',
                    ),
                    OrderMedicine(
                      title: 'Name Of Shop',
                      area: 'Address',
                      timigs: '8:00 - 12:00',
                      delivery: 'NO',
                      cno: '998965',
                    ),
                  ],
                ),
                //FoodDistribution(text: 'Descreption',title: 'Title', timigs: 'Timing',area: 'Address', organiser: 'Organiser',)
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

class OrderGroceries extends StatelessWidget {
  OrderGroceries(
      {this.title, this.cno, this.area, this.timigs, this.delivery});

  final String title;
  final String area;
  final String timigs;
  final String delivery;
  final String cno;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),

              child: Column(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    area,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Time: $timigs",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Home Delivery:$delivery",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  IconButton(
                    icon: Icon(Icons.local_phone),
                    iconSize: 45,
                    onPressed: () {
                      FlutterPhoneState.startPhoneCall('$cno');
                    },
                  ),
                ],
              ),
              //,
            ),
          ),
        ],
      ),
    );
  }
}


class OrderMedicine extends StatelessWidget {
  OrderMedicine(
      {this.title, this.cno, this.area, this.timigs, this.delivery});

  final String title;
  final String area;
  final String timigs;
  final String delivery;
  final String cno;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),

              child: Column(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    area,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Time: $timigs",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Home Delivery:$delivery",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  IconButton(
                    icon: Icon(Icons.local_phone),
                    iconSize: 45,
                    onPressed: () {
                      FlutterPhoneState.startPhoneCall('$cno');
                    },
                  ),
                ],
              ),
              //,
            ),
          ),
        ],
      ),
    );
  }
}

