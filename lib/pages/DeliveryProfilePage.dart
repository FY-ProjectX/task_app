import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeliveryProfilePage extends StatefulWidget {
  DeliveryProfilePage({Key? key}) : super(key: key);

  @override
  _DeliveryProfilePageState createState() => _DeliveryProfilePageState();
}

class _DeliveryProfilePageState extends State<DeliveryProfilePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  List _orders = [];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/orders.json');
    final data = await json.decode(response);
    setState(() {
      _orders = data["orders"];
    });
  }

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
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('Delivery Guy Dashboard'),
        ),
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
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _orders.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            hoverColor: Colors.blue,
                            onTap: () {
                              print("Clicked");
                            },
                            leading: Icon(Icons.add_box),
                            trailing: Text(
                              "${_orders[index]['date']}",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 15),
                            ),
                            title: Text(
                                " Order Id: ${_orders[index]['id']} Cost: ${_orders[index]['cost']}"));
                      },
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
