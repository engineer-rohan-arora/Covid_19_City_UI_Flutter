import 'package:flutter/material.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';
import 'info_scren.dart';

class Contact extends StatefulWidget {
  static const String id = 'Contact';
  @override
  _Contact createState() => _Contact();
}

class _Contact extends State<Contact> {
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
          title: const Text('Contact'),
          actions: <Widget>[
            // action button

            IconButton(
              icon: Icon(Icons.local_phone),
              onPressed: () {
                //Navigator.pushNamed(context, Contact.id);
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
                                      FlutterPhoneState.startPhoneCall('+919999999999');
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
                                      FlutterPhoneState.startPhoneCall('+919999999999');
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
                                      FlutterPhoneState.startPhoneCall('+919999999999');
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
      ),
    );
  }
}
