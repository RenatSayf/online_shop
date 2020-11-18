import 'package:flutter/cupertino.dart';

import 'Product.dart';

class ProductFamily
{
  String category;
  List<Product> productList;

    ProductFamily(
        this.category,
        this.productList
      );

    String priceRange()
    {
      try
      {
        return '${productList[0]} - ${productList[productList.length - 1]}';
      }
      on NullThrownError catch(e)
      {
        print(e.stackTrace.toString());
        return '-';
      }
      on IndexError catch(e)
      {
        print(e.message);
        return '-';
      }
    }


    Product getProduct(int index)
    {
      var emptyProduct = Product(
        name: "Undefined",
        image: AssetImage('assets/images/icon_help.png'),
        price: 0,
        option: ""
      );
      try
      {
          return productList.length > 0 ? productList[index] : emptyProduct;
      }
      on IndexError catch (e)
      {
        print(e.message);
        return emptyProduct;
      }
      on NullThrownError catch(e)
      {
        print(e.stackTrace.toString());
        return emptyProduct;
      }
    }
}