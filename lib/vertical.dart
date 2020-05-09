import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Vertical extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
          child: CarouselSlider(
              options: CarouselOptions(height:250,autoPlay: true,enlargeCenterPage: true,scrollDirection: Axis.vertical),
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
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(imgPath,),
        )
    );
  }

}