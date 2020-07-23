import 'package:flutter/material.dart';
import './resources/images.dart';

class CustomNavBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(80);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0.0),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Image.asset(
            Images.MENU_ICON,
            height: 30.0,
            width: 30.0,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Image.asset(
                Images.BELL_ICON,
                height: 22.0,
                width: 22.0,
              ),
              onPressed: () {}),
          new IconButton(
              icon: new Image.asset(
                Images.PROFILE_ICON,
                height: 32.0,
                width: 32.0,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
