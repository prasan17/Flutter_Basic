import 'package:flutter/material.dart';
import 'package:globe_app/themes/colors.dart';

class LatestPromoSection extends StatelessWidget {
  final List<Map<String, dynamic>> _promos = [
    {
      'promofor': 'Spotify',
      'promoversion': 'Premium',
      'promotitle': 'Subscribe for',
      'price': 'P 1675.00',
      'time': '/m',
    },
    {
      'promofor': 'Instagram',
      'promoversion': 'Surf',
      'promotitle': 'Get pack for',
      'price': 'P 100.00',
      'time': '/m',
    },
    {
      'promofor': 'Facebook',
      'promoversion': 'Surf',
      'promotitle': 'Get pack for',
      'price': 'P 50.00',
      'time': '/m',
    },
    {
      'promofor': 'Instagram',
      'promoversion': 'Surf',
      'promotitle': 'Get pack for',
      'price': 'P 100.00',
      'time': '/m',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 36.0),
      color: AppColors.COLOR_WHITE,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Latest Promos',
                  style: TextStyle(
                    fontFamily: 'AvenirNext',
                    fontWeight: FontWeight.w700,
                    color: AppColors.COLOR_LAVENDER_PINK,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      fontFamily: 'AvenirNext',
                      fontWeight: FontWeight.w400,
                      color: AppColors.COLOR_LIGHTISH_BLUE,
                      fontSize: 13.0),
                ),
              ],
            ),
          ),
          Container(
            height: 170.0,
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: ListView.builder(
                itemCount: _promos.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Container(
                      width: 140.0,
                      color: AppColors.COLOR_LAVENDER_PINK,
                      // decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //   image: AssetImage('assets/images/promo_fb--icon.png'),
                      //   fit: BoxFit.cover,
                      // )),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Image(
                                  //   image: AssetImage(
                                  //     'assets/images/spotify__logo.png',
                                  //   ),
                                  //   width: 18.0,
                                  //   height: 18.0,
                                  // ),
                                  RichText(
                                    text: TextSpan(
                                        text: '${_promos[index]['promofor']} ',
                                        style: TextStyle(
                                            color: AppColors.COLOR_WHITE,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'AvenirNext'),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: _promos[index]
                                                  ['promoversion'],
                                              style: TextStyle(
                                                  color: AppColors.COLOR_WHITE,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'AvenirNext'))
                                        ]),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: <Widget>[],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
