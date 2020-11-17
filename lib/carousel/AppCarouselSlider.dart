import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/carousel/AppSlide.dart';
import 'package:online_shop/main.dart';

class AppCarouselSlider extends StatefulWidget {
  @override
  _AppCarouselSliderState createState() => _AppCarouselSliderState();
}

class _AppCarouselSliderState extends State<AppCarouselSlider> {

    int _current = 0;
    List<AppSlide> slides = [
        AppSlide(
          image: AssetImage('assets/images/pizza1.png'),
          text: 'Доставка в течении 30 минут',
        ),
        AppSlide(
            image: AssetImage('assets/images/pizza2.png'),
            text: 'Акция: Овощная пицца в подарок',
        ),
        AppSlide(
            image: AssetImage('assets/images/pizza3.png'),
            text: 'Пицца "Ассорти" за 450 рублей!',
        )
    ];



  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                SizedBox(height: 20.0,),
                CarouselSlider(
                    options: CarouselOptions(
                        height: 210,
                        initialPage: 0,
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        autoPlayInterval: Duration(seconds: 2),
                        //autoPlayAnimationDuration: Duration(milliseconds: 3000),
                        scrollDirection: Axis.horizontal,
                        viewportFraction: 1.0,
                        aspectRatio: 2.0,
                        onPageChanged: callbackFunction,
                    ),

                    items: slides.map((img){
                        return Builder(
                            builder: (BuildContext context){
                                return Column(
                                  children: <Widget>[
                                    Container(
                                        width: MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                                        decoration: BoxDecoration(
                                            color: Colors.green
                                        ),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: img.image,
                                                    fit: BoxFit.cover
                                                ),
                                            ),
                                        ),
                                        height: 150,
                                    ),
                                      Container(
                                          padding: EdgeInsets.all(15),
                                          child: Text(img.text, style: TextStyle(
                                              shadows: [
                                                  Shadow(
                                                      color: Color.fromRGBO(0, 0, 0, 0.7),
                                                      offset: Offset(1,1)
                                                  )
                                              ],
                                              color: Colors.white,
                                              fontSize: 18
                                          ),),
                                      )
                                  ],
                                );
                            },
                        );
                    }).toList(),
                ),
                SizedBox(
                    height: 0.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: carouselMap(slides, (index, images){
                        return Container(
                            width: 10,
                            height: 10,
                            margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index ? mainColor : Colors.white,
                                border: Border(
                                    left: _borderSide,
                                    top: _borderSide,
                                    right: _borderSide,
                                    bottom: _borderSide,
                                )
                            ),
                        );
                    }),
                )
            ],
        ),
    );
  }

  void callbackFunction(int index, CarouselPageChangedReason reason) {
      setState(() {
        _current = index;
      });
  }

    List<T> carouselMap<T>(List list, Function handler) {
        List<T> result = [];
        for (var i = 0; i < list.length; i++) {
            result.add(handler(i, list[i]));
        }
        return result;
    }

    BorderSide _borderSide = BorderSide(
      color: mainColor,
      width: 1,
      style: BorderStyle.solid
    );
}
