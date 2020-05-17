import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfooddelivery/Src/datas/menu_item.dart';

List<MenuItem> menuItemList = [
  MenuItem(name: "Chicken", image: "images/kfcfood.jpg", price: 8.99, ),
  MenuItem(name: "Steak", image: "images/kfcfood.jpg", price: 8.99,  ),
  MenuItem(name: "Chicken", image: "images/kfcfood.jpg", price: 30.99,),
  MenuItem(name: "Steak", image: "images/kfcfood.jpg", price: 8.99,),
  MenuItem(name: "Ice cream", image: "images/ice-cream.png", price: 8.99, ),
  MenuItem(name: "Steak", image: "images/kfcfood.jpg", price: 8.0, ),
  MenuItem(name: "Steak", image: "images/kfcfood.jpg", price: 8.99,),
  MenuItem(name: "Steak", image: "images/kfcfood.jpg", price: 8.99,  ),
  MenuItem(name: "Chips", image: "images/kfcfood.jpg", price: 30.99, ),
  MenuItem(name: "Steak", image: "images/kfcfood.jpg", price: 8.99, ),
  MenuItem(name: "Steak", image: "images/kfcfood.jpg", price: 8.99,),
  MenuItem(name: "Steak", image: "images/kfcfood.jpg", price: 8.0,),
];

class MenuWidget extends StatefulWidget {
  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 170,
        child: GridView.builder(
          padding: EdgeInsets.all(10.0),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10.0,
  ),
         itemCount: menuItemList.length,
            itemBuilder:(context, index){
              return Container(
                height: 100,
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(menuItemList[index].image)
                    ),
                    Positioned(
                        right: 10,
                        bottom: 10,
                        child:IconButton(icon: Icon(Icons.add_circle),color: Theme.of(context).primaryColor,onPressed: (){},)
                    ),
                    Positioned(
                     top: 60,
                      right: 50,
                      child: Column(
                     children: <Widget>[
                       Text(menuItemList[index].name,style: TextStyle(
                         fontSize: 16,
                         color: Colors.white,
                         fontWeight: FontWeight.bold

                       ),
                       ),
                       Text(menuItemList[index].price.toString(),style: TextStyle(
                           fontSize: 16,
                           color: Colors.white,
                           fontWeight: FontWeight.bold

                       ),
                       )
                     ],
                    ),
                    )

                  ],

                ),

              );
            }
        ),
      );
  }
}
