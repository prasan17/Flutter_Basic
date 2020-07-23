import 'package:flutter/material.dart';
import './themes/colors.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      onTap: (selectedIndex) {
        setState(() {
          _currentIndex = selectedIndex;
        });
      },
      currentIndex: _currentIndex,
      elevation: 10.0,
      items: [
        BottomNavigationBarItem(
          backgroundColor: AppColors.COLOR_WHITE,
          icon: new Image.asset(
            'assets/images/mobile_icon.png',
            width: 28.0,
            height: 28.0,
          ),
          title: Container(
            padding: _currentIndex == 0
                ? EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0)
                : EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: _currentIndex == 0
                  ? AppColors.COLOR_LIGHTISH_BLUE_OPACITY01
                  : AppColors.COLOR_WHITE,
            ),
            child: Text(
              'Mobile',
              style: TextStyle(
                fontSize: 11.0,
                color: AppColors.COLOR_NERO,
                fontFamily: 'AvenirNext',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.12,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: AppColors.COLOR_WHITE,
          icon: new Image.asset(
            'assets/images/lifestyle_icon.png',
            width: 28.0,
            height: 28.0,
          ),
          title: Container(
            padding: _currentIndex == 1
                ? EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 4.0)
                : EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: _currentIndex == 1
                  ? AppColors.COLOR_LIGHTISH_BLUE_OPACITY01
                  : AppColors.COLOR_WHITE,
            ),
            child: Text(
              'Lifestyle',
              style: TextStyle(
                fontSize: 11.0,
                color: AppColors.COLOR_NERO,
                fontFamily: 'AvenirNext',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.12,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: new Image.asset(
            'assets/images/wallet_icon.png',
            width: 28.0,
            height: 28.0,
          ),
          title: Container(
            padding: _currentIndex == 2
                ? EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0)
                : EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: _currentIndex == 2
                  ? AppColors.COLOR_LIGHTISH_BLUE_OPACITY01
                  : AppColors.COLOR_WHITE,
            ),
            child: Text(
              'Wallet',
              style: TextStyle(
                fontSize: 11.0,
                color: AppColors.COLOR_NERO,
                fontFamily: 'AvenirNext',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.12,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: new Image.asset(
            'assets/images/more_icon.png',
            width: 28.0,
            height: 28.0,
          ),
          title: Container(
            padding: _currentIndex == 3
                ? EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0)
                : EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: _currentIndex == 3
                  ? AppColors.COLOR_LIGHTISH_BLUE_OPACITY01
                  : AppColors.COLOR_WHITE,
            ),
            child: Text(
              'More',
              style: TextStyle(
                fontSize: 11.0,
                color: AppColors.COLOR_NERO,
                fontFamily: 'AvenirNext',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
