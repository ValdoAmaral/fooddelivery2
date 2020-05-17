import 'package:flutter/material.dart';
import 'package:projectfooddelivery/Src/models/user.dart';
import 'package:projectfooddelivery/Src/screens/sign_up_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body:ScopedModelDescendant<UserModel>(
         builder:(context,child,model){
           if(model.isLoading)
             return Center(child: CircularProgressIndicator(),);
           return ListView(
             children: <Widget>[
               Column(
                 children: <Widget>[
                   SafeArea(
                     child: Padding(
                       padding:EdgeInsets.only(left:8.0,right: 8.0,top: 8.0,bottom: 12),
                       child: ClipRRect(
                           borderRadius: BorderRadius.circular(20),
                           child: Image.asset("images/womaneating.jpg")
                       ),
                     ),
                   ),
                   SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12,),
                     child: Container(
                       decoration: BoxDecoration(
                           border: Border.all(color: Colors.grey),
                           borderRadius: BorderRadius.circular(15)
                       ),
                       child: Padding(padding: EdgeInsets.only(left: 10),
                         child: TextFormField(

                           decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "Email",
                               icon: Icon(Icons.email)
                           ),
                         ),),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(12),
                     child: Container(
                       decoration: BoxDecoration(
                           border: Border.all(color: Colors.grey),
                           borderRadius: BorderRadius.circular(15)
                       ),
                       child: Padding(padding: EdgeInsets.only(left: 10),
                         child: TextFormField(

                           decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "Password",
                               icon: Icon(Icons.lock)
                           ),
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(10),
                     child: GestureDetector(
                       onTap: (){
                         model.signIn();
                       },
                       child: Container(
                         width: 200,
                         decoration: BoxDecoration(
                             color: Theme.of(context).primaryColor,
                             border: Border.all(color: Colors.grey),
                             borderRadius: BorderRadius.circular(25)
                         ),
                         child: Padding(padding: EdgeInsets.only(top: 10, bottom: 10,),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[
                               Text("Sign in ",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 22,
                                     color: Colors.white
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 10,),
                   GestureDetector(
                       onTap: (){

                       },
                       child: Text("Forgot my password",style: TextStyle(
                           fontWeight: FontWeight.bold
                       ),
                       )

                   ),
                   SizedBox(height: 15,),
                   GestureDetector(
                       onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>SignUpScreen())
                        );
                       },
                       child: Text("Create an account",style: TextStyle(
                           fontWeight: FontWeight.bold
                       ),
                       )

                   ),

                 ],
               ),
             ],
           );
         }
     )
    );
  }
}