import 'package:flutter/material.dart';

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
            'assets/images/menu_logo.png',
            height: 30.0,
            width: 30.0,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Image.asset(
                'assets/images/bell__icon.png',
                height: 22.0,
                width: 22.0,
              ),
              onPressed: () {}),
          new IconButton(
              icon: new Image.asset(
                'assets/images/profile_logo.png',
                height: 32.0,
                width: 32.0,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
