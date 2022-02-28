import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyNavigationBar extends StatefulWidget{
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NavigationBar();

}

class _NavigationBar extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF141414),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/SVGmaker/apple-logo.svg"),
          Container(
            margin: const EdgeInsets.only(left: 60, right: 20),
            child: const Text("Store",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("Mac",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("iPad",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("iPhone",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("Watch",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("Mac",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("AirPods",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("TV & Home",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("Only on Apple",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("Accessories",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("Support",style: TextStyle(color: Color(0xFFa4a4a4), fontSize: 12),)),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 13,
              child: Image.asset("assets/search.png")),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: SvgPicture.asset("assets/SVGmaker/svgexport-2.svg"))

        ],
      ),
    );
  }
}