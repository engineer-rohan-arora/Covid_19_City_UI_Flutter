import 'package:flutter/material.dart';
import 'screen/contact.dart';
import 'screen/info_scren.dart';
class HotSpot extends StatefulWidget {
  static const String id = 'HotSpot';
  @override
  _HotSpot createState() => _HotSpot();
}

class _HotSpot extends State<HotSpot> {

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
            title: const Text('Hotspot List'),
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
            child:Column(
              children: <Widget>[
                SizedBox(height: 15,),
                HotspotList(title: "Name of Hotspot", patients: "5",),
                SizedBox(height: 15,),
                HotspotList(title: "Name of Hotspot", patients: "5",),
                SizedBox(height: 15,),
                HotspotList(title: "Name of Hotspot", patients: "5",),
                SizedBox(height: 15,),
                HotspotList(title: "Name of Hotspot", patients: "5",),
                SizedBox(height: 15,),
                HotspotList(title: "Name of Hotspot", patients: "5",),
                SizedBox(height: 15,),
                HotspotList(title: "Name of Hotspot", patients: "5",),
                SizedBox(height: 15,),
                HotspotList(title: "Name of Hotspot", patients: "5",),

              ],
            ),
          )
          ),

        ),

    );
  }
}
class HotspotList extends StatelessWidget {

  HotspotList({this.title,this.patients});

  final String title;
  final String patients;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Material(
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            elevation: 5.0,
            color: Colors.white  ,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),

              child: Column(
                children: <Widget>[
                  Text(title,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),

                  SizedBox(height: 15,),

                  Text('No. of Infected People : $patients', style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),),


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