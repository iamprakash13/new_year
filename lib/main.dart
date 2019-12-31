import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Year',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
   
          final dur = Duration(
        days: 0,
        hours: 0,
        minutes: 0,
        seconds: 0,
        milliseconds: 300,
        microseconds: 0);

         final pause_dur = Duration(
        days: 0,
        hours: 0,
        minutes: 0,
        seconds: 0,
        milliseconds: 30,
        microseconds: 0);

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
      body:Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
 child: ColorizeAnimatedTextKit(
   isRepeatingAnimation: true,
   totalRepeatCount: 2020,
   speed: dur,
   pause: pause_dur,
    onTap: () {
        print("Tap Event");
      },
    text: [
      "Happy",
      "New Year",
      // "2019",
    ],
    textStyle: TextStyle(
        fontSize: 50.0, 
        fontFamily: "Horizon"
    ),
    colors: [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ],
    textAlign: TextAlign.start,
    alignment: AlignmentDirectional.topStart // or Alignment.topLeft
  ),

            ),
           // new SizedBox(height: 30.0,),
            
            new Container(
 height: 200.0,
              width: 400.0,
             child: new FlareActor("assets/7segment.flr", alignment:Alignment.center, fit:BoxFit.contain, animation:"year"),
      

            ),
           // new SizedBox(height: 30.0,),
            new Container(
              height: 300.0,
              width: 300.0,
             child: new FlareActor("assets/rotate_earth.flr", alignment:Alignment.center, fit:BoxFit.contain, animation:"rotate"),
        )
          ],
        ),
      ),
      

    );
  }
}
