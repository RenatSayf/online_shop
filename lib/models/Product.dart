import 'package:flutter/cupertino.dart';

class Product
{
  String name;
  AssetImage image;
  String option;
  num price;

    Product({
        this.name,
        this.image,
        this.option = '',
        this.price = 0
    });

    var src = 'https://static-ru.insales.ru/images/products/1/510/227009022/large_893-original-1520x1015-1_1.png';
    var src1 = 'https://static-ru.insales.ru/images/products/1/511/227009023/large_image.png';
    var src2 = 'https://static-ru.insales.ru/images/products/1/513/227009025/large_90d15f22dc95822302e6af16108ef45a_gallerySiteSize.png';
    var src3 = 'https://static-ru.insales.ru/images/products/1/514/227009026/large_7b0d75cef12148762c9ab3b9865da2c3_100531941.png';
}