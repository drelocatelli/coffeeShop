import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.26,
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 40),
            height: size.height * 0.25 - 27,
            decoration: BoxDecoration(
              color: Color.fromRGBO(199, 181, 153, 1.0),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello, {user}!", style: TextStyle(fontSize: 28, color: Color.fromRGBO(132, 113, 104, 1), fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 22.0, vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 20,
                    color: Color.fromRGBO(158, 158, 158, 1),
                  ),
                ]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.black45),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
