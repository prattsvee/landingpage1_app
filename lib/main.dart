import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landingpage1_app/formpage.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            height: 300,
            child: Carousel(
              dotColor:  Color(0xFFf45d27),
              dotBgColor: Colors.grey[200],
              autoplay: true,
              showIndicator: true,
              indicatorBgPadding: 0.1,
              boxFit: BoxFit.fitHeight,
              images: [
                Image.asset("image/project.jpg"),
                Image.asset("image/project.jpg"),
                Image.asset("image/project.jpg"),
              ],
              //showIndicator: true,
            ),
          ),
          progress,
          text,
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                 color: Color(0xFFf45d27),
                  padding: EdgeInsets.only(
                    left: 48,
                    right: 48,
                    top: 8,
                    bottom: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FormPage()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      SizedBox(width: 4),
                      Text(
                        "Donate Now",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),

                    ],
                  ),
                ), // Reset Button
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget progress = Container(
  padding: const EdgeInsets.all(20),
  child: new Center(
    child: new Row(
      children: <Widget>[
        Container(
          color: Color(0xFFf45d27),
          child: Column(
            children: [
              Text(
                '25',
                softWrap: true,
                style: TextStyle (
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Text(
                'Projects \n Done',
                softWrap: true,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
          child: Divider(
            color: Colors.white,
            thickness: 20,
          ),
        ),
        Container(
          color: Color(0xFFf45d27),
          child: Column(
            children: [
              Text(
                '25',
                softWrap: true,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Text(
                'Projects\n Done',
                softWrap: true,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
// #About
Widget text = Container(
  padding: const EdgeInsets.all(20),
  child: new Center(
    child: new Column(
      children: <Widget>[
        Text(
          'Giving is the greatest act of grace.',
          softWrap: true,
          style: TextStyle(
            fontSize: 30,
          ),
        )
      ],
    ),
  ),
);

