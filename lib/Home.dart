import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/components/Body.dart';

import 'Constants.dart';
import 'components/Header.dart';

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
        backgroundColor: kPrimaryColor,
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
      body: Body(),
    );
  }
}
