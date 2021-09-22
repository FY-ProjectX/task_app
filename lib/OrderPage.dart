import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String? valuechoose;

  List listItem = [
    "Documents",
    "Food",
    "Cloth",
    "Groceries",
    "Flowers",
    "Cake"
  ];

  Widget _buildaddress() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.location_city_rounded, color: Colors.green),
        hintText: 'Address',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(35.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(235.0),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }

  Widget _buildphone() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(Icons.phone, color: Colors.green),
        hintText: 'Phone number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(35.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(235.0),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }

  Widget _buildtype() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.local_post_office_rounded),
        hintText: 'Note: appartment,office, etc.',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(35.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(235.0),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }

  Widget _toaddress() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.location_city_rounded),
        hintText: 'Address',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(35.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(235.0),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }

  Widget _tophone() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(Icons.phone),
        hintText: 'Phone number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(35.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(235.0),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }

  Widget _totype() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.local_post_office_rounded),
        hintText: 'Note: appartment,office, etc.',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(35.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(235.0),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }

  Widget _weight() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.local_post_office_rounded),
        hintText: 'weight of the package',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(35.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(235.0),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }

  bool? checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: 'order',
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Order Page'),
          ),
          body: ListView(
            padding: EdgeInsets.all(8),
            children: [
              ListTile(
                title: Text('A)  FROM'),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: _buildaddress(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildphone(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildtype(),
              ),
              ListTile(
                title: Text('B)  TO'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _toaddress(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _tophone(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _totype(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: _weight(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 52, 0, 0),
                child: DropdownButton(
                  value: valuechoose,
                  onChanged: (value) {
                    setState(() {
                      valuechoose = value.toString();
                      print(value);
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                  hint: Text(
                    "Type of package",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 53, 0, 0),
                child: Row(
                  children: [
                    Checkbox(
                      value: this.checkboxvalue,
                      onChanged: (bool? value) {
                        print(value);
                        setState(() {
                          checkboxvalue = value;
                        });
                      },
                    ),
                    Text("I accept the terms and condition")
                  ],
                ),
              )
            ],
          )),
    );
  }
}
