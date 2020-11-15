import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/main.dart';

class ShopDrawer  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ShopDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            children: <Widget>[
                DrawerHeader(
                    decoration: BoxDecoration(
                        color: mainColor,
                    ),
                    child: Text('Shop Name', style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                    ),),
                ),
                ListTile(
                    leading: Icon(Icons.home, color: Colors.lime,),
                    title: Text('Главная'),
                    onTap: (){
                        Navigator.pop(context);
                    },
                )
            ],
        ),
    );
  }
}
