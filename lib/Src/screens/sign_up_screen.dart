import 'package:flutter/material.dart';
import 'package:projectfooddelivery/Src/models/user.dart';
import 'package:scoped_model/scoped_model.dart';


class SignUpScreen extends StatefulWidget {



  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController=TextEditingController();
  final _surnameController=TextEditingController();
  final _emailController=TextEditingController();
  final _passController=TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: _scaffoldKey,
        body:ScopedModelDescendant<UserModel>(

          builder: (context,child,model){
            if(model.isLoading)
              return Center(child:CircularProgressIndicator(),);
            return Form(
              key:_formKey,
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Center(
                        child: Icon(Icons.person,size: 100,color: Theme.of(context).primaryColor,),
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
                              controller: _nameController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Name",
                                  icon: Icon(Icons.person)
                              ),
                            ),
                          ),
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
                              controller: _surnameController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Surname",
                                  icon: Icon(Icons.person)
                              ),
                            ),
                          ),
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
                              controller: _emailController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "E-mail",
                                  icon: Icon(Icons.email)
                              ),
                            ),
                          ),
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
                              controller:_passController,
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
                            if(_formKey.currentState.validate()){
                              Map<String,dynamic> userData={
                                "name":_nameController.text,
                                "surname":_surnameController.text,
                                "email":_emailController.text,

                              };
                              model.signUp(
                                  userData: userData,
                                  pass: _passController.text,
                                  onSuccess: _onSuccess,
                                  onFail: _onFail
                              );
                            }
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
                                  Text("Register ",
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
                      GestureDetector(child: Text("Already have a account? Sign up here")),
                    ],
                  ),
                ],
              ),
            );

          },
        )
    );

  }
  void _onSuccess(){
    print('Regstration Successful');
  }
  void _onFail(){
    print('Regstration failed');
  }

}
