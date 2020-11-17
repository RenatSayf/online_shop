import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AppCarouselSlider extends StatefulWidget {
  @override
  _AppCarouselSliderState createState() => _AppCarouselSliderState();
}

class _AppCarouselSliderState extends State<AppCarouselSlider> {

    int _current = 0;
    List<AssetImage> images = [
        AssetImage('assets/images/pizza1.png'),
        AssetImage('assets/images/pizza2.png'),
        AssetImage('assets/images/pizza3.png')
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
                        height: 200,
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

                    items: images.map((img){
                        return Builder(
                            builder: (BuildContext context){
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(horizontal: 0.0),
                                    decoration: BoxDecoration(
                                        color: Colors.green
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: img,
                                                fit: BoxFit.cover
                                            ),
                                        ),
                                    ),
                                );
                            },
                        );
                    }).toList(),
                ),
                SizedBox(
                    height: 20.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: carouselMap(images, (index, images){
                        return Container(
                            width: 10,
                            height: 10,
                            margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index ? Colors.redAccent : Colors.green
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
}
