import 'package:flutter/material.dart';
import 'package:saharanpurcovidapp/screen/info_scren.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';
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
