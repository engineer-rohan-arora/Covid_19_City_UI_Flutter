import 'package:flutter/material.dart';
class Info extends StatefulWidget {
  static const String id = 'info_screen';
  @override
  _Info createState() => _Info();
}

class _Info extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Center(child: Text('About Covid-19')),),
                Tab(child: Center(child: Text('Report A Bug')),),
                Tab(child: Center(child: Text('Developers Info')),),
              ],
            ),
              leading: IconButton(icon:Icon(Icons.arrow_back),
                onPressed:() => Navigator.pop(context, false),

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
