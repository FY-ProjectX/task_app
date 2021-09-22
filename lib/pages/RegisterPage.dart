import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // TextEditingController name = TextEditingController();
  // TextEditingController contact = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // TextEditingController confirmpassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  var confirmPass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Center(
                  //   child: Text(
                  //     "Register Form",
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
                          labelText: ' First Name',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          )),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'First Name'),
                      controller: fname,
                      // The validator receives the text that the user has entered.
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: ' Last Name',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          )),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Last Name'),
                      controller: lname,
                      // The validator receives the text that the user has entered.
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: 'Email Id ',
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
                      validator: (String? value) {
                        confirmPass = value;
                        if (value!.isEmpty) {
                          return "Please Enter New Password";
                        } else if (value.length < 8) {
                          return "Password must be atleast 8 characters long";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          )),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Password'),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Please Re-Enter New Password";
                        } else if (value.length < 8) {
                          return "Password must be atleast 8 characters long";
                        } else if (value != confirmPass) {
                          return "Password must be same as above";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: 'Re-enter Password',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          )),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Re-enter Password'),
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
                          if (_formKey.currentState!.validate()) {
                            // String userEmail = email.text;
                            // String userPassword = password.text;
                            Get.offNamed("/login");
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
