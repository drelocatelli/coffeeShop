import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    List _images = ["pexels-photo-324028.jpeg", "pexels-photo-977878.jpeg", "pexels-photo-1170659.jpeg"];

    Widget _slide() {
        return Row(
          children: [
            for(var item in _images)
              Padding(
                padding: EdgeInsets.only(top: 20, right: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "assets/${item}",
                    width: 220,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              )
          ],
        );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _slide(),
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
        ],
      )
    );
  }
}
