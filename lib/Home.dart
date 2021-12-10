import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/components/Body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Coffee shop", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.normal))),
        backgroundColor: Color.fromRGBO(199, 181, 153, 1.0),
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/menu.svg", color: Colors.black54),
          onPressed: () {  },
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/cart.svg", color: Colors.black54),
                )
              ],
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Body(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text("hello world"),
            ),
          ],
        ),
      ),
    );
  }
}
