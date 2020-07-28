import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String username, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // SizedBox(height: 15 * SizeCon,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      fit: BoxFit.contain,
                      height: 120.0,
                      width: 120.0,
                    ),
                  ),
                  // Column(
                  //   children: <Widget>[
                  //     Text(
                  //       "ZERTEKPAY",
                  //       style: TextStyle(
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.black,
                  //       ),
                  //     ),
                  //     SizedBox(height: 3),
                  //     Text("...payment made easy",
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w400,
                  //           fontSize: 15,
                  //           color: Colors.red,
                  //           fontStyle: FontStyle.italic,
                  //         )),
                  //   ],
                  // ),
                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Container(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Username",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20),
                          borderSide: new BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      onChanged: (val) {
                        username = val;
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "please enter a valid username";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: new TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        // suffix: Icon(Icons.visibility_off),
                        labelText: "Password",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20),
                          borderSide: new BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      onChanged: (val) {
                        password = val;
                      },
                      validator: (val) {
                        if (val.length == 0) {
                          return "please enter your password";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: new TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("forgot password?", textAlign: TextAlign.right,),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(17)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width - 26,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account?",
                          style: TextStyle(fontSize: 15)),
                      Text(
                        "SignUp",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
