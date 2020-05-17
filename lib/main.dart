import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'Src/models/user.dart';
import 'Src/screens/sign_up_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return ScopedModel<UserModel>(
    model: UserModel(),
    child:  MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home:SignUpScreen(),
    ),
  );
}
}


