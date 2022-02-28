import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MiniBar extends StatefulWidget {
  const MiniBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MiniBar();
}

class _MiniBar extends State<MiniBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(
      (0xFF141414),
    ),
    child: Stack(children: [
      Align(alignment: Alignment.center,child: SvgPicture.asset("assets/SVGmaker/apple-logo.svg"))
    ]),
    );
  }
}
