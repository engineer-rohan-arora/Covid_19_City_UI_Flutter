import 'package:flutter/material.dart';
import 'package:saharanpurcovidapp/screen/info_scren.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';

class Services extends StatefulWidget {
  static const String id = 'service_screen';
  @override
  _Services createState() => _Services();
}

class _Services extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Center(child: Text('Drop Food')),),
                Tab(child: Center(child: Text('Volunteer Registeration')),),
                Tab(child: Center(child: Text('Saharnpur News')),),
              ],
            ),
            title: const Text('Services'),
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
                (child: Text('Drop Food')),
              Center(
                  child: Text('Volunteer Registeration')),
              Center(
                  child: Text('Saharanpur News'))
            ],
          ),
        ),
      ),
    );
  }
}
