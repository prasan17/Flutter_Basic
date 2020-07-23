import 'package:flutter/material.dart';
import 'package:globe_app/themes/colors.dart';

class PhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 6.0),
          child: Text('My Prepaid',
              style: TextStyle(
                fontSize: 12.0,
                color: AppColors.COLOR_GRAY_31,
                fontFamily: 'AvenirNext',
                fontWeight: FontWeight.w400,
              )),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        '092787368820',
                        style: TextStyle(
                            fontFamily: 'AvenirNext',
                            fontWeight: FontWeight.w700,
                            color: AppColors.COLOR_BLACK,
                            fontSize: 20.0),
                      ),
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Container(
                      child: Image(
                        image: AssetImage('assets/images/dropdown_logo.png'),
                        width: 20.0,
                        height: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('assets/images/plus_icon.png'),
                  width: 21.0,
                  height: 21.0,
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
