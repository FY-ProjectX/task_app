import 'package:flutter/material.dart';

class DeliveryProfilePage extends StatefulWidget {
  DeliveryProfilePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DeliveryProfilePageState createState() => _DeliveryProfilePageState();
}

class _DeliveryProfilePageState extends State<DeliveryProfilePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final bankdetailsField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Bank Details",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final regionField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Region",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final proofofaddressField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Address Proof",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final mobileField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Mobile Number",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final nextpageButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("nextpage",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 45.0),
                nameField,
                SizedBox(height: 25.0),
                bankdetailsField,
                SizedBox(
                  height: 35.0,
                ),
                regionField,
                SizedBox(
                  height: 35.0,
                ),
                proofofaddressField,
                SizedBox(
                  height: 35.0,
                ),
                mobileField,
                SizedBox(
                  height: 35.0,
                ),
                nextpageButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
