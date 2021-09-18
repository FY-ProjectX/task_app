import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Delivery Guy Profile Page '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    final List<String> orderid = <String>[
      '#001',
      '#001',
      '#001',
      '#001',
      '#001',
      '#001',
      '#001',
      '#001'
    ];
    final List<String> date = <String>[
      '20/10/2021',
      '20/10/2021',
      '20/10/2021',
      '20/10/2021',
      '20/10/2021',
      '20/10/2021',
      '20/10/2021',
      '20/10/2021'
    ];
    final List<int> cost = <int>[2, 0, 10, 6, 52, 4, 0, 2];
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
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
                itemCount: orderid.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      hoverColor: Colors.blue,
                      onTap: () {
                        print("Clicked");
                      },
                      leading: Icon(Icons.add_box),
                      trailing: Text(
                        "${date[index]}",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                      title: Text(
                          " Order Id: ${orderid[index]} Cost: ${cost[index]}"));
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
    ));
  }
}
