import 'package:flutter/material.dart';
import 'package:saharanpurcovidapp/help.dart';
import 'package:saharanpurcovidapp/hotspot_list.dart';
import 'package:saharanpurcovidapp/screen/info_scren.dart';
import 'package:saharanpurcovidapp/report_mass.dart';
import 'package:saharanpurcovidapp/report_patient.dart';
import 'package:saharanpurcovidapp/volunteer_regen.dart';
import 'package:saharanpurcovidapp/donation.dart';
import 'package:saharanpurcovidapp/screen/contact.dart';
class Services extends StatefulWidget {
  static const String id = 'service_screen';
  @override
  _Services createState() => _Services();
}

class _Services extends State<Services> {
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
            bottom: TabBar(
              tabs: [
                Tab(child: Center(child: Text('Food Distribution')),),
                Tab(child: Center(child: Text('Food Drop')),),
                Tab(child: Center(child: Text('Saharnpur News')),),
              ],
            ),
            title: const Text('Services'),
            actions: <Widget>[
              // action button
              IconButton(
                icon: Icon(Icons.local_phone),
                onPressed: () {Navigator.pushNamed(context, Contact.id);},
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
                    FoodDistribution(text: 'Descreption',title: 'Title', timigs: 'Timing',area: 'Address', organiser: 'Organiser',),
                    FoodDistribution(text: 'Descreption',title: 'Title', timigs: 'Timing',area: 'Address', organiser: 'Organiser',),
                    FoodDistribution(text: 'Descreption',title: 'Title', timigs: 'Timing',area: 'Address', organiser: 'Organiser',)
                  ],
                ),
                //FoodDistribution(text: 'Descreption',title: 'Title', timigs: 'Timing',area: 'Address', organiser: 'Organiser',)
              ),
              SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: <Widget>[
                    Padding(
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
                                  Text('Food Drop',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),

                                  SizedBox(height: 15,),

                                  Text('Here you will get the list of places colleting food to be donated. If '
                                      'You want you can donate food, groceries or medicene here', style: TextStyle(
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
                    ),
                    Column(
                      children: <Widget>[
                        Food(title:'Food Drop 1', text: 'Address', time: '10:15',),
                        Food(title:'Food Drop 2', text: 'Address', time: '1:15'),
                        Food(title:'Food Drop 3', text: 'Address', time: '5:15'),
                        Food(title:'Food Drop 4', text: 'Address', time: '10:45'),
                        Food(title:'Food Drop 5', text: 'Address', time: '1:00')
                        ],
                    ),

                  ],
                ),
              ),
              SingleChildScrollView(
                controller: controller,
                child:Column(
                  children: <Widget>[
                    SizedBox(height: 15,),
                    News(title: "News Title", text: "Content .........................................................",),
                    SizedBox(height: 15,),
                    News(title: "News Title", text: "Content .........................................................",),
                    SizedBox(height: 15,),
                    News(title: "News Title", text: "Content .........................................................",),
                    SizedBox(height: 15,),
                    News(title: "News Title", text: "Content .........................................................",),
                    SizedBox(height: 15,),
                    News(title: "News Title", text: "Content .........................................................",),
                  ],
                ),
              )
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
                      Text('SAHARANPUR',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text('Covid-19 Help',
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
                  onTap: () {Navigator.pushNamed(context, Volunteer.id);},
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


class FoodDistribution extends StatelessWidget {

  FoodDistribution({this.title,this.text,this.area,this.timigs,this.organiser});

  final String title;
  final String area;
  final String timigs;
  final String organiser;
  final String text;

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
                  SizedBox(height: 20,),
                  Text(area,style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),),
                  SizedBox(height: 15,),
                  Text("Time: $timigs",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),),
                  SizedBox(height: 15,),

                  Text("Organiser:$organiser", style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),),
                  SizedBox(height: 15,),

                  Text(text, style: TextStyle(
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

class Food extends StatelessWidget {

  Food({this.title,this.text,this.time});

  final String title;
  final String text;
  final String time;

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
                  Text('Time: $time', style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),),
                  SizedBox(height: 15,),

                  Text(text, style: TextStyle(
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

class News extends StatelessWidget {

  News({this.title,this.text});

  final String title;
  final String text;

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

                  Text(text, style: TextStyle(
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
