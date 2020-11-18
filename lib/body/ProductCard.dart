import 'package:flutter/material.dart';
import 'package:online_shop/models/ProductFamily.dart';

class ProductCard extends StatefulWidget {

  final ProductFamily productFamily;

    ProductCard(
      this.productFamily
      );

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
