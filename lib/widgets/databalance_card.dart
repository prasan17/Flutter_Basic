import 'package:flutter/material.dart';
import 'package:globe_app/themes/colors.dart';
import '../resources/images.dart';

class DataBalanceCard extends StatelessWidget {
  final List<Map<String, dynamic>> _databalance = [
    {
      'balancetype': 'Load Balance',
      'price': 'P 1675.00',
      'validity': 'Valid till 26 Dec'
    },
    {
      'balancetype': 'Data Balance',
      'price': 'P 1075.00',
      'validity': 'Valid till 26 Nov'
    },
    {
      'balancetype': 'Load Balance',
      'price': 'P 1275.00',
      'validity': 'Valid till 26 Oct'
    },
    {
      'balancetype': 'Data Balance',
      'price': 'P 1975.00',
      'validity': 'Valid till 26 Mar'
    }
  ];
  final List<Map<String, dynamic>> _plan = [
    {'plan': 'GoSURF1299', 'dataplan': '30 days 5GB Data'},
    {'plan': 'GoSURF999', 'dataplan': '30 days 10GB Data'},
    {'plan': 'GoSURF1199', 'dataplan': '30 days 5GB Data'},
    {'plan': 'GoSURF1099', 'dataplan': '28 days 10GB Data'},
    {'plan': 'GoSURF1199', 'dataplan': '31 days 18GB Data'},
    {'plan': 'GoSURF1399', 'dataplan': '25 days 15GB Data'}
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      ),
      child: Container(
        color: AppColors.COLOR_PALE_NAVY,
        padding: const EdgeInsets.fromLTRB(20.0, 32.0, 20.0, 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 160.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _databalance.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: Container(
                          width: 136.0,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image(
                                image: AssetImage(
                                  Images.MEDIA_ICON,
                                ),
                                width: 21.0,
                                height: 20.0,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 28.0),
                              Text(
                                _databalance[index]['balancetype'],
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.COLOR_BLACK_PEARL,
                                    fontFamily: 'AvenirNext'),
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                _databalance[index]['price'],
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.COLOR_BLACK,
                                    fontFamily: 'AvenirNext'),
                              ),
                              SizedBox(height: 12.0),
                              Text(
                                _databalance[index]['validity'],
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.COLOR_NERO,
                                    fontFamily: 'AvenirNext'),
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 26.0, 0.0, 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Recommedned',
                          style: TextStyle(
                            color: AppColors.COLOR_MATTHERON,
                            fontSize: 12.0,
                            fontFamily: 'AvenirNext',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: AppColors.COLOR_LIGHTISH_BLUE,
                            fontSize: 12.0,
                            fontFamily: 'AvenirNext',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 68.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _plan.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                            color: AppColors.COLOR_BLUE,
                            child: Container(
                              width: 143.0,
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    _plan[index]['plan'],
                                    style: TextStyle(
                                        fontSize: 9.0,
                                        fontFamily: 'AvenirNext',
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.COLOR_WHITE),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    _plan[index]['dataplan'],
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'AvenirNext',
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.COLOR_WHITE),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
