import 'package:flutter/material.dart';
import './cutom_navbar.dart';
import './widgets/databalance_card.dart';
import './widgets/phone_number.dart';
import './cutom_bottomnavbar.dart';
import './widgets/latest_promo.dart';

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
            LatestPromoSection(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80.0,        
        child: BottomNavBar(),
      ),
    );
  }
}
