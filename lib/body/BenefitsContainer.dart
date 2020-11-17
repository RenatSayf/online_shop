import 'package:flutter/material.dart';
import 'package:online_shop/carousel/AppSlide.dart';

class BenefitsContainer extends StatelessWidget {

  final List<AppSlide> _slides = [
    AppSlide(
      image: AssetImage('assets/images/ben1.png'),
      text: 'Бесплатная доставка от суммы заказа 600 рублей',
    ),
    AppSlide(
      image: AssetImage('assets/images/ben2.png'),
      text: 'Оплата наличными или по карте при получении заказа',
    ),
    AppSlide(
      image: AssetImage('assets/images/ben3.png'),
      text: 'Заказы принимаются круглосуточно в праздники и выходные',
    )
  ];

  Container benefit(AppSlide slide){
      return Container(
          padding: EdgeInsets.all(20),
          child: Column(
              children: <Widget>[
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: slide.image,
                              fit: BoxFit.cover
                          )
                      ),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(slide.text, style: TextStyle(

                      ),textAlign: TextAlign.center,),
                  )
              ],
          ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
            benefit(_slides[0]),
            benefit(_slides[1]),
            benefit(_slides[2])
        ],
    );
  }
}
