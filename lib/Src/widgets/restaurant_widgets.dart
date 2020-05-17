import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfooddelivery/Src/datas/restaurant.dart';


List<Restaurant> restaurantList=[
  Restaurant(image:"kfcloja.jpg",distance: "2 miles away",location:"Shoprite do magoanine",restaurantName: "KFC"),
  Restaurant(image:"dominos.jpg",distance: "0.9 miles away",location:"Downtown",restaurantName: "Dominos"),
  Restaurant(image:"kfclogo.png",distance: "2 miles away",location:"Shoprite do magoanine",restaurantName: "KFC"),

];
class RestaurantWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: restaurantList.length,
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
                        width: 150,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("images/${restaurantList[index].image}",fit:BoxFit.cover ,)
                        )
                    ),

                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        padding: EdgeInsets.all(2),
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("${restaurantList[index].restaurantName}",style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star,size: 15,color:Colors.yellowAccent,),
                                Icon(Icons.star,size: 15,color:Colors.yellowAccent),
                                Icon(Icons.star,size: 15,color:Colors.yellowAccent),
                                Icon(Icons.star,size: 15,color:Colors.yellowAccent),
                                Icon(Icons.star_half,size: 15,color:Colors.yellowAccent),

                              ],
                            ),
                            Text("${restaurantList[index].location}"),
                            Text("${restaurantList[index].distance}"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
    );


  }
}
