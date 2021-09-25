import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  // TextEditingController name = TextEditingController();
  // TextEditingController contact = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // TextEditingController confirmpassword = TextEditingController();
  final _loginformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('Login'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Form(
              key: _loginformKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Center(
                  //   child: Text(
                  //     "Login Form",
                  //     style: TextStyle(
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: 'Email Id',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          )),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Your Email'),
                      controller: email,
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the email';
                        }
                        bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value);
                        if (!emailValid) {
                          return 'Please enter the correct email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText:
                          !_passwordVisible, //This will obscure text dynamically
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          )),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Password'),
                      controller: password,
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the password';
                        }
                        return null;
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.red,
                          // onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_loginformKey.currentState!.validate()) {
                            // String userEmail = email.text;
                            // String userPassword = password.text;
                            Get.offNamed('/customerdashboard');
                          }
                        },
                        child: Text('Login'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
