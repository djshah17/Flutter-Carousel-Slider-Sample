import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ManualSlide extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ManualSlideState();
  }
}

class ManualSlideState extends State<ManualSlide> {

  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = new CarouselController();

    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CarouselSlider(
          items: [
            MyImageView("images/nature1.jpg"),
            MyImageView("images/nature2.jpg"),
            MyImageView("images/nature3.jpg"),
            MyImageView("images/nature4.jpg"),
            MyImageView("images/nature5.jpg"),
            MyImageView("images/nature6.jpg"),
          ],
          options: CarouselOptions(height:200),
          carouselController: carouselController,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              textColor: Colors.white,
              color: Colors.pink,
              child: Text("Previous"),
              onPressed: () {
                carouselController.previousPage();
              },
            ),
            SizedBox(
              width: 15,
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.pink,
              child: Text("Next"),
              onPressed: () {
                carouselController.nextPage();
              },
            )
          ],
        ),
      ])),
    );
  }
}

class MyImageView extends StatelessWidget {
  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(imgPath),
        ));
  }
}
