import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        image(size),
        SizedBox(height: size.height * 0.02),
        text(context),
      ],
    );
  }
  Widget image(Size size) {
    return Image.asset(
      "assets/images/logo_ailes_1080.png",
      width: size.width * 0.8,
    );
  }
  Widget text(BuildContext context) {
    if (UniversalPlatform.isIOS){
      return const DefaultTextStyle(
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          child: Text("Quand le rêve devient tragédie"));
    } else {
      return Text(
        "Quand le rêve devient tragédie",
        style: Theme.of(context).textTheme.headline4,
      );
    }
  }
}