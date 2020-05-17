import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfooddelivery/Src/datas/order.dart';

List <Order> orderList=[
  Order(menuItem: "Burger",image: "burger2.jpg",restaurant: "Burger king",date:"Nov, 10 2019"),
  Order(menuItem: "Pizza",image: "pizza.jpg",restaurant: "Domino's pizza",date:"Nov, 21 2019"),
  Order(menuItem: "Ice-cream",image: "icecream.jpg",restaurant: "Ben and jerry's",date:"Jan,1 2020")
];


class OrderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: orderList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey[100]
                   
                ),
                borderRadius: BorderRadius.circular(20)

              ),
              child: Row(
                children: <Widget>[
                  Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("images/${orderList[index].image}",fit:BoxFit.cover ,)
                      )
                  ),

                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                          padding: EdgeInsets.all(2),
                          height: 55,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("${orderList[index].menuItem}",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("${orderList[index].restaurant}"),
                              Text("${orderList[index].date}"),
                            ],
                          ),
                        ),
                  ),
                  IconButton(icon: Icon(Icons.add_circle,color: Colors.deepOrange,size: 35,), onPressed: null)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
