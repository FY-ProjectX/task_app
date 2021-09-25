import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String? _name;
  String? _email;
  String? _password;
  String? _phoneNumber;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Name',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      maxLength: 20,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Email',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String? value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _password = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Phone number',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      keyboardType: TextInputType.phone,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Phone number is Required';
        } else if (value.length < 8) {
          return "Phone number must be 10 digits only.";
        }

        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Customer's Profile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(16)),
                _buildName(),
                const SizedBox(
                  height: 16,
                ),
                _buildEmail(),
                const SizedBox(
                  height: 16,
                ),
                _buildPassword(),
                const SizedBox(
                  height: 32,
                ),
                _buildPhoneNumber(),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 32,
                  // width: 200,
                ),
                ElevatedButton(
                  child: Text(
                    'Logout',
                  ),
                  style: ElevatedButton.styleFrom(
                      primary:
                          // Colors.teal,
                          Color.fromRGBO(52, 163, 163, 1.0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }

                    _formKey.currentState!.save();

                    print(_name);
                    print(_email);
                    print(_phoneNumber);
                    print(_password);
                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
