// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'screens/page1.dart';
import 'screens/login.dart';
import 'screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/page1': (context) => Page1(),
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
      initialRoute: '/',
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String buttonText = 'NEXT';
  Color selectedCard = Colors.red;
  int currentIndex = 0;

  Color? newcolor = Color(0x6849EF);
  String headline = 'data';
  int counter = 0;
  Widget circleAvatar = Container(
    margin: EdgeInsets.only(right: 10),
    child: CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 5,
    ),
  );

  List images = [
    'assets/images/image.png',
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image2.png',
    'assets/images/image2.png',
    'assets/images/image2.png',
    'assets/images/image2.png',
    'assets/images/image2.png',
    'assets/images/image2.png',
    'assets/images/image2.png',
    'assets/images/image2.png',
    'assets/images/image2.png',
  ];
  List title = [
    'Welcome to LearnEase',
    'Expert-Led Lectures',
    'Connect with Tutors',
    'Connect with Tutors',
    'Connect with Tutors',
    'Connect with Tutors',
    'Connect with Tutors',
    'Connect with Tutors',
    'Connect with Tutors',
    'Connect with Tutors',
    'Connect with Tutors',
    'Connect with Tutors',
  ];
  List subTitle = [
    'Explore high-quality courses and learn at your own pace',
    'Access recorded lectures by industry experts to master essential skills and concepts',
    'Utilize direct chat for instant support and guidance anytime you need it',
    'Utilize direct chat for instant support and guidance anytime you need it',
    'Utilize direct chat for instant support and guidance anytime you need it',
    'Utilize direct chat for instant support and guidance anytime you need it',
    'Utilize direct chat for instant support and guidance anytime you need it',
    'Utilize direct chat for instant support and guidance anytime you need it',
    'Utilize direct chat for instant support and guidance anytime you need it',
    'Utilize direct chat for instant support and guidance anytime you need it',
    'Utilize direct chat for instant support and guidance anytime you need it',
    'Utilize direct chat for instant support and guidance anytime you need it',
  ];

  List<Widget> theList = [];
  void _buildList() {
    for (int i = 0; i < images.length; i++) {
      theList.add(circleAvatar);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _buildList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          margin: EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset(images[currentIndex]),
                  Text(
                    title[currentIndex],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subTitle[currentIndex],
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: images.length * 20,
                            margin: EdgeInsets.only(top: 20),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: images.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: CircleAvatar(
                                      backgroundColor: index == currentIndex
                                          ? Colors.blue
                                          : Colors.grey,
                                      radius: 5,
                                    ),
                                  );
                                }),
                          ),
                        ]),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children:
                    // ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    // primary: const Color.fromRGBO(100, 100, 100, 0.9),
                    backgroundColor: Color.fromARGB(255, 164, 34, 220),
                    // onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (currentIndex < images.length - 1) {
                        currentIndex += 1;
                      }
                      if (currentIndex == images.length - 1) {
                        buttonText = 'GO TO THE APP';
                      }
                    });
                    if (buttonText == 'GO TO THE APP') {
                      Navigator.pushNamed(context, '/page1');
                    }
                    // Navigator.of(context).pushNamed(MyHomePage.routeName);
                  },
                  child: Text(buttonText,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('you tapped');
                  Navigator.pushNamed(context, '/page1');
                  //  navigation page
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
