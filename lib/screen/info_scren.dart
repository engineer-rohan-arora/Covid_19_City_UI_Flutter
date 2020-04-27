import 'package:flutter/material.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';
import 'package:saharanpurcovidapp/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Info extends StatefulWidget {
  static const String id = 'info_screen';
  @override
  _Info createState() => _Info();
}

class _Info extends State<Info> {

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
                Tab(child: Center(child: Text('About Covid-19')),),
                Tab(child: Center(child: Text('Report A Bug')),),
                Tab(child: Center(child: Text('Developers Info')),),
              ],
            ),
            leading: IconButton(icon:Icon(Icons.arrow_back),
                onPressed:() => Navigator.pop(context, false),

              ),
            title: const Text('Info'),
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
          body: TabBarView(
            children: [
              SingleChildScrollView(
                controller: controller,
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Symptoms",
                            style: kTitleTextstyle,
                          ),
                          SizedBox(height: 20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SymptomCard(
                                  image: "assets/images/headache.png",
                                  title: "Headache",
                                  isActive: true,
                                ),
                                SymptomCard(
                                  image: "assets/images/caugh.png",
                                  title: "Caugh",
                                ),
                                SymptomCard(
                                  image: "assets/images/fever.png",
                                  title: "Fever",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Prevention", style: kTitleTextstyle),
                          SizedBox(height: 20),
                          PreventCard(
                            text:
                            "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                            image: "assets/images/wear_mask.png",
                            title: "Wear face mask",
                          ),
                          PreventCard(
                            text:
                            "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                            image: "assets/images/wash_hands.png",
                            title: "Wash your hands",
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                    )
                  ],
                ),
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
                                labelText: 'Describe The Problem faced'
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
                    DevCard(title: 'Rohan Arora', text: 'Quantum University',college: 'Full Stack Developer',),
                    //SizedBox(height: 2.5,),
                    DevCard(title: 'Garv Arora', text: 'St. Mary\'s Academy',college: 'Graphics Designer',),
                    //SizedBox(height: 2.5,),
                    DevCard(title: 'Shivank Tyagi', text: 'Quantum University',college: 'Web Developer',),
                    //SizedBox(height: 2.5,),
                    DevCard(title: 'Shreya Sharma', text: 'Quantum University',college: 'UI/UX Developer',),

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

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        text,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const SymptomCard({
    Key key,
    this.image,
    this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 20,
            color: kActiveShadowColor,
          )
              : BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 6,
            color: kShadowColor,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image, height: 90),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class DevCard extends StatelessWidget {
  final String title;
  final String college;
  final String text;
  const DevCard({
    Key key,
    this.title,
    this.text,
    this.college,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 140,
        child: Stack(
          //alignment: Alignment.centerLeft,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8,horizontal: 32),
              child: Container(
                height: 125,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 8),
                      blurRadius: 24,
                      color: kShadowColor,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 125,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          college,
                          style: TextStyle(
                            fontSize: 22,

                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
