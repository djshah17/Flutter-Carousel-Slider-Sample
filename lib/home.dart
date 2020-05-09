import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercarouselslidersample/basic.dart';
import 'package:fluttercarouselslidersample/center_page_large.dart';
import 'package:fluttercarouselslidersample/custom_indicator.dart';
import 'package:fluttercarouselslidersample/fetch_from_network.dart';
import 'package:fluttercarouselslidersample/fullscreen.dart';
import 'package:fluttercarouselslidersample/manual_slide.dart';
import 'package:fluttercarouselslidersample/no_infinite_scroll.dart';
import 'package:fluttercarouselslidersample/vertical.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text("Basic", style: TextStyle(fontSize: 22)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Basic()),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.amberAccent,
                  child:
                      Text("Center Page Large", style: TextStyle(fontSize: 22)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CenterPageLarge()),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text("Full Screen", style: TextStyle(fontSize: 22)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FullScreen()),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child:
                      Text("Custom Indicator", style: TextStyle(fontSize: 22)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomIndicator()),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  child: Text("Manual Slide", style: TextStyle(fontSize: 22)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManualSlide()),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  child: Text("Vertical", style: TextStyle(fontSize: 22)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Vertical()),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.deepOrange,
                  child: Text("Fetch From Network",
                      style: TextStyle(fontSize: 22)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FetchFromNetwork()),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.teal,
                  child: Text("No Infinite Scroll",
                      style: TextStyle(fontSize: 22)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NoInfiniteScroll()),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
