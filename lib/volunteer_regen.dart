import 'package:flutter/material.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';
class Volunteer extends StatefulWidget {
  static const String id = 'Volunteer';
  @override
  _Volunteer createState() => _Volunteer();
}

class _Volunteer extends State<Volunteer> {

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
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context, false),

            ),
            title: const Text('Volunteer Registeration'),
            actions: <Widget>[
              // action button

              IconButton(
                icon: Icon(Icons.local_phone),
                onPressed: () => FlutterPhoneState.startPhoneCall('+919999999999'),
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

        ),

    );
  }
}