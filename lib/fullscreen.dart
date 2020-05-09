import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FullScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var getScreenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
        body: Center(
          child: CarouselSlider(
              options: CarouselOptions(height: getScreenHeight,autoPlay: true,viewportFraction: 1.0),
              items: [
                MyImageView("images/nature1.jpg"),
                MyImageView("images/nature2.jpg"),
                MyImageView("images/nature3.jpg"),
                MyImageView("images/nature4.jpg"),
                MyImageView("images/nature5.jpg"),
                MyImageView("images/nature6.jpg"),
              ]
          ),
        )
    );
  }

}

class MyImageView extends StatelessWidget{

  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(imgPath,),
        )
    );
  }

}