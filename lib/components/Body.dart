import 'package:flutter/material.dart';
import 'package:shop/components/Header.dart';
import 'package:shop/components/Slide.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About us", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.brown)),
               Slide(),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(color: Colors.black54),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
