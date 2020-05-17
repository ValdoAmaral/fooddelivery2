import "package:flutter/material.dart";


class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.navigate_before), onPressed: (){}),
        title: Icon(Icons.shopping_cart),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 150,
            width: 150,
            child: Card(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                        borderRadius:BorderRadius.circular(8.0),
                        child: Image.asset("images/kfcfood.jpg")
                    ),
                  ),

                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       Text("Fried chicken"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Restaurant KFC"),
                            Text("29.89"),
                          ],
                        )
                      ],
                    ),

                ],
              ),

            ),
          ),

        ],
      )

    );
  }
}
