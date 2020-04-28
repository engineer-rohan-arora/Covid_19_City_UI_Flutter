import 'package:flutter/material.dart';
import 'screen/contact.dart';
import 'screen/info_scren.dart';
class Help extends StatefulWidget {
  static const String id = 'Help';
  @override
  _Help createState() => _Help();
}
class _Help extends State<Help> {

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
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false),

          ),
          title: const Text('Help'),
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
                    SizedBox(height: 20),
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
        ),

    );
  }
}