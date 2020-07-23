import 'package:flutter/material.dart';
import 'package:globe_app/themes/colors.dart';
import '../resources/images.dart';

class LatestPromoSection extends StatelessWidget {
  final List<Map<String, dynamic>> _promos = [
    {
      'image': Images.SPOTIFYPROMO_ICON,
      'icon': Images.SPOTIFY_ICON,
      'promofor': 'Spotify',
      'promoversion': 'Premium',
      'promotitle': 'Subscribe for',
      'price': 'P 1675.00',
      'time': '/m',
    },
    {
      'image': Images.FBPROMO_ICON,
      'icon': Images.FB_ICON,
      'promofor': 'Facebook',
      'promoversion': 'Surf',
      'promotitle': 'Get pack for',
      'price': 'P 50.00',
      'time': '/m',
    },
    {
      'image': Images.SPOTIFYPROMO_ICON,
      'icon': Images.INSTA_ICON,
      'promofor': 'Instagram',
      'promoversion': 'Surf',
      'promotitle': 'Get pack for',
      'price': 'P 100.00',
      'time': '/m',
    },
    {
      'image': Images.FBPROMO_ICON,
      'icon': Images.FB_ICON,
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
                      fontWeight: FontWeight.w600,
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            image: AssetImage(_promos[index]['image']),
                            fit: BoxFit.cover,
                          ),
                          color: AppColors.COLOR_WHITE),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(16.0, 0.0, 10.0, 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage(
                                        _promos[index]['icon'],
                                      ),
                                      width: 18.0,
                                      height: 18.0,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text:
                                              '${_promos[index]['promofor']} ',
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
                                                    color:
                                                        AppColors.COLOR_WHITE,
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'AvenirNext'))
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.fromLTRB(
                                      16.0, 14.0, 10.0, 0.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Color.fromRGBO(0, 0, 0, 0.4)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        _promos[index]['promotitle'],
                                        style: TextStyle(
                                            color: AppColors.COLOR_WHITE,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'AvenirNext'),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: '${_promos[index]['price']} ',
                                            style: TextStyle(
                                                color: AppColors.COLOR_WHITE,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'AvenirNext'),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: _promos[index]['time'],
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.COLOR_WHITE,
                                                      fontSize: 10.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: 'AvenirNext'))
                                            ]),
                                      )
                                    ],
                                  ),
                                ))
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
