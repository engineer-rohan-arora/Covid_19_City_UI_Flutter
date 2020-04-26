import 'package:flutter/material.dart';
import 'package:saharanpurcovidapp/screen/info_scren.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';


class Order extends StatefulWidget {
  static const String id = 'order_screen';
  @override
  _Order createState() => _Order();
}

class _Order extends State<Order> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Center(child: Text('Food Items')),),
                Tab(child: Center(child: Text('Medicine')),),

              ],
            ),
            title: const Text('Order'),
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
                (child: Text('Food Items')),
              Center(
                  child: Text('Medicine')),

            ],
          ),
        ),
      ),
    );
  }
}
