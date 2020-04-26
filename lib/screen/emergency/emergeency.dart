import 'package:flutter/material.dart';
import 'package:saharanpurcovidapp/screen/info_scren.dart';

class Emergency extends StatefulWidget {
  static const String id = 'emergency_screen';
  @override
  _Emergency createState() => _Emergency();
}
class _Emergency extends State<Emergency> {


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
            title: const Text('Services'),
            actions: <Widget>[
              // action button
              IconButton(
                icon: Icon(Icons.local_pharmacy),
                onPressed: () {
                },
              ),
              IconButton(
                  icon: Icon(Icons.local_phone),
                  onPressed: () { print("Pressed"); }
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
                (child: Text('Report A Patient')),
              Center(
                  child: Text('Help')),
              Center(
                  child: Text('Contact'))
            ],
          ),
        ),
      ),
    );
  }
}
