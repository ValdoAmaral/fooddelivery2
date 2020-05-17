import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfooddelivery/Src/widgets/menu_widget.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  "images/kfcloja.jpg",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.white,),
                    onPressed: (){},
                  ),
                  top: 15,

                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Restaurant KFC",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "0.2 miles away",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SmoothStarRating(
                        allowHalfRating: false,
                        starCount: 5,
                        size: 20.0,
                        filledIconData: Icons.blur_off,
                        halfFilledIconData: Icons.blur_on,
                        color: Colors.yellowAccent,
                        borderColor: Colors.yellowAccent,
                        spacing: 0.0),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("200 Main St, New york"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 5),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton.icon(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            color: Theme.of(context).primaryColor,
                            icon: Icon(
                              Icons.rate_review,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Reviews',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                          FlatButton.icon(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            color: Theme.of(context).primaryColor,
                            icon: Icon(
                              Icons.contact_phone,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Contact',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                     Text(
                      "Menu",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                     MenuWidget(),


                ],
              )
              ),
            )
          ],
        ),
      ),
    );
  }
}
