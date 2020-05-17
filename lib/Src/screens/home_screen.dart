import 'package:flutter/material.dart';
import 'package:projectfooddelivery/Src/widgets/order_widget.dart';
import 'package:projectfooddelivery/Src/widgets/restaurant_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
           child:ListView(
             children: <Widget>[
               UserAccountsDrawerHeader(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(bottomRight:  Radius.circular(40)),
                   color: Theme.of(context).primaryColor
                 ),
                 accountName: Text("Valdo Amaral"), accountEmail:Text("Valdo@gmail.com"),

               ),
               ListTile(
                 onTap: (){},
                 leading: Icon(Icons.home),
                 title:Text("Home"),
               ),
               ListTile(
                 onTap: (){},
                 leading: Icon(Icons.person),
                 title:Text("Account"),
               ),
               ListTile(
                 onTap: (){},
                 leading: Icon(Icons.restaurant),
                 title:Text("Restaurants"),
               ),
               ListTile(
                 onTap: (){},
                 leading: Icon(Icons.shopping_cart),
                 title:Text("Cart"),
               ),
               ListTile(
                 onTap: (){},
                 leading: Icon(Icons.exit_to_app),
                 title:Text("Log-out"),
               ),
             ],
           )
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Food delivery"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children:[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).primaryColor,
                          offset: Offset(1, 1),
                          blurRadius: 5)
                    ]),
                child: ListTile(
                  leading: IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Food or Restaurants",
                      hintStyle: TextStyle(
                        fontSize: 13,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: Icon(Icons.close),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:14.0),
              child: Text("Recent orders",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
           OrderWidget(),
            Padding(
              padding: const EdgeInsets.only(left:14.0),
              child: Text("Nearby Restaurants",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            RestaurantWidget()
          ],
        ),
      ),
    );
  }
}
