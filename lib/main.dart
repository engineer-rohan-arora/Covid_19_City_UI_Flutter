import 'package:flutter/material.dart';
import 'package:saharanpurcovidapp/volunteer_regen.dart';
import 'screen/emergency/emergeency.dart';
import 'screen/home_screen.dart';
import 'screen/order/Order.dart';
import 'screen/services/Services.dart';
import 'screen/info_scren.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'screen/contact.dart';
import 'report_mass.dart';
import 'report_patient.dart';
import 'hotspot_list.dart';
import 'help.dart';
import 'donation.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          Info.id: (context) => Info(),
          Volunteer.id: (context) => Volunteer(),
          Contact.id: (context) => Contact(),
          ReportMass.id : (context) => ReportMass(),
          ReportPatient.id : (context) => ReportPatient(),
          Help.id : (context) => Help(),
          HotSpot.id : (context) => HotSpot(),
          Donation.id : (context) => Donation(),
        },
        home: HomePage());
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final _pageOptions = [HomeScreen(), Order(), Services(),Emergency()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[currentPage],
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.shopping_cart, title: "Order"),
          TabData(iconData: Icons.monetization_on, title: "Service"),
          TabData(iconData: Icons.accessibility_new, title: "Emergency")
        ],
        onTabChangedListener: (int position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}
