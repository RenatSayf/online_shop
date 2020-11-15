import 'package:flutter/material.dart';

import '../main.dart';

class ShopTitle extends StatelessWidget {
  final String header;
  final String tagline;

  ShopTitle({@required this.header, @required this.tagline}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            children: <Widget>[
                Container(
                    child: Text(header, style: TextStyle(
                            fontFamily: 'Lobster',
                            color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        ),
                    ),
                    padding: EdgeInsets.only(
                        top: 30,
                        bottom: 10
                    ),
                ),

                Center(
                  child: Container(
                      width: double.infinity,
                      child: Text(tagline, style: TextStyle(color: mainColor),
                          textAlign: TextAlign.center,
                        ),
                      padding: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.green,
                                  width: 1.0,
                              )
                          )
                      ),
                  ),
                )
            ],
        ),
    );
  }
}
