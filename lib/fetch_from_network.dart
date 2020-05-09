import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FetchFromNetwork extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FetchFromNetworkState();
  }
}

class FetchFromNetworkState extends State<FetchFromNetwork> {
  List<String> imgUrls = [
    "https://wonderfulengineering.com/wp-content/uploads/2016/01/nature-wallpapers-38.jpg",
    "https://www.pixelstalk.net/wp-content/uploads/2016/07/Desktop-autumn-hd-wallpaper-3D.jpg",
    "https://wallpaperplay.com/walls/full/1/a/1/286161.jpg",
    "https://wallpapertag.com/wallpaper/full/c/8/8/548481-best-cool-nature-wallpapers-hd-1920x1080-720p.jpg",
    "https://i.pinimg.com/originals/ff/e4/59/ffe459582c8e4dc676d73e4b07dcabc0.jpg",
    "https://wallpapercave.com/wp/uUqxVHp.jpg",
  ];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      imgUrls.forEach((url) {
        precacheImage(NetworkImage(url), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: CarouselSlider.builder(
        itemCount: imgUrls.length,
        options: CarouselOptions(aspectRatio: 2.0, autoPlay: true),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child:
                Image.network(imgUrls[index], fit: BoxFit.cover, width: 1000),
          );
        },
      ),
    ));
  }
}

class MyImageView extends StatelessWidget {
  String imgUrl;

  MyImageView(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Image.network(
        imgUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
