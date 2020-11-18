import 'package:flutter/material.dart';
import 'package:online_shop/body/BenefitsContainer.dart';
import 'package:online_shop/carousel/AppCarouselSlider.dart';
import 'package:online_shop/menu/ShopDrawer.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/shop_title/ShopTitle.dart';

Color mainColor = Color.fromRGBO(77, 57, 61, 1);

void main() => runApp(Shop());

class Shop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Главная'),
                    backgroundColor: mainColor,
                ),
                drawer: ShopDrawer(),
                body: ListView(
                    padding: EdgeInsets.all(16),
                    children: <Widget>[
                        ShopTitle(
                            header: 'PizzaWok',
                            tagline: 'Вкусите прекрасных блюд',
                        ),
                        AppCarouselSlider(),
                        BenefitsContainer()
                    ],
                ),
            ),
      );
  }
}

