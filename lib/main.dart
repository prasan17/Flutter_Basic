import 'package:flutter/material.dart';
import './cutom_navbar.dart';
import './widgets/databalance_card.dart';
import './themes/colors.dart';
import './widgets/phone_number.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomNavBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            PhoneNumber(),
            DataBalanceCard(),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
          bottomLeft: Radius.circular(100.0),
          bottomRight: Radius.circular(100.0),
        ),
        child: BottomNavigationBar(
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
              title: Text(
                'Mobile',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff272727),
                    letterSpacing: 1.0,
                    fontFamily: 'AvenirNext',
                    fontWeight: FontWeight.w700,
                    backgroundColor:
                        _currentIndex == 0 ? Color(0xfff1f4ff) : Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.COLOR_WHITE,
              icon: new Image.asset(
                'assets/images/lifestyle_icon.png',
                width: 28.0,
                height: 28.0,
              ),
              title: Text(
                'Lifestyle',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xff272727),
                  fontFamily: 'AvenirNext',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  backgroundColor:
                      _currentIndex == 1 ? Color(0xfff1f4ff) : Colors.white,
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
              title: Text(
                'Wallet',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xff272727),
                  fontFamily: 'AvenirNext',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  backgroundColor:
                      _currentIndex == 2 ? Color(0xfff1f4ff) : Colors.white,
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
              title: Text(
                'More',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff272727),
                    fontFamily: 'AvenirNext',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.0,
                    backgroundColor:
                        _currentIndex == 3 ? Color(0xfff1f4ff) : Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
