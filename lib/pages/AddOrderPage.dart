import 'package:flutter/material.dart';

class AddOrderPage extends StatefulWidget {
  @override
  _AddOrderPageState createState() => _AddOrderPageState();
}

class _AddOrderPageState extends State<AddOrderPage> {
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
        icon: Icon(
          Icons.location_city_rounded,
          color: Colors.white,
        ),
        hintText: 'Address',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
          width: 1.0,
        )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildphone() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(
          Icons.phone,
          color: Colors.white,
        ),
        hintText: 'Phone number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
          width: 1.0,
        )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildtype() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(
          Icons.local_post_office_rounded,
          color: Colors.white,
        ),
        hintText: 'Note: appartment,office, etc.',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
          width: 1.0,
        )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _toaddress() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(
          Icons.location_city_rounded,
          color: Colors.white,
        ),
        hintText: ('Address'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
          width: 1.0,
        )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _tophone() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(
          Icons.phone,
          color: Colors.white,
        ),
        hintText: 'Phone number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
          width: 1.0,
        )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _totype() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(
          Icons.local_post_office_rounded,
          color: Colors.white,
        ),
        hintText: 'Note: appartment,office, etc.',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
          width: 1.0,
        )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _weight() {
    return TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(
            Icons.local_post_office_rounded,
            color: Colors.white,
          ),
          hintText: 'weight of the package',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ));
  }

  bool? checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(52, 163, 163, 1.0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(52, 163, 163, 1.0),
          title: Text('Order Page'),
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            ListTile(
              title: Text(
                'A)  FROM',
                style: TextStyle(color: Colors.white),
              ),
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
              title: Text(
                'B)  TO',
                style: TextStyle(color: Colors.white),
              ),
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
                      color: Colors.white,
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
                  Text(
                    "I accept the terms and condition",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
