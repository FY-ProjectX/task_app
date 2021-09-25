import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomerDashboard extends StatefulWidget {
  @override
  _CustomerDashboardState createState() => _CustomerDashboardState();
}

class NavigationDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(52, 163, 163, 1.0),
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 20),
            buildMenuItem(
                text: 'Home', icon: Icons.home, next: '/customerdashboard'),
            const SizedBox(height: 20),
            buildMenuItem(
                text: 'Profile', icon: Icons.people, next: '/customerprofile'),
            const SizedBox(height: 20),
            buildMenuItem(
                text: 'Trip History',
                icon: Icons.update,
                next: '/customerdashboard'),
            const SizedBox(height: 20),
            buildMenuItem(
                text: 'Payment Method',
                icon: Icons.payment,
                next: '/customerdashboard'),
            const SizedBox(height: 20),
            buildMenuItem(
                text: 'Add Order', icon: Icons.payment, next: '/addorderpage'),
            const SizedBox(height: 24),
            Divider(color: Colors.white),
            const SizedBox(height: 24),
            const SizedBox(height: 20),
            buildMenuItem(
                text: 'About', icon: Icons.help, next: '/customerdashboard'),
            const SizedBox(height: 20),
            buildMenuItem(
                text: 'Help', icon: Icons.help, next: '/customerdashboard'),
            const SizedBox(height: 48),
            buildMenuItem(
                text: 'Logout', icon: Icons.logout_outlined, next: '/'),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required String next,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white24;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: () {
        if (next == '/') {
          Get.offAllNamed(next);
        } else {
          Get.toNamed(next);
        }
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/orders.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["orders"];
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 163, 163, 1.0),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // Display the data loaded from sample.json
            _items.length > 0
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text(_items[index]["id"]),
                            title: Text(_items[index]["date"]),
                            subtitle: Text(_items[index]["cost"]),
                          ),
                        );
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.receipt),
              title: Text("Order $index"),
              hoverColor: Colors.white24,
              onTap: () {
                print("Hii");
              },
            );
          }),
    );
  }
}

class _CustomerDashboardState extends State<CustomerDashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard",
      home: Scaffold(
        backgroundColor: Color.fromRGBO(52, 163, 163, 1.0),
        drawer: NavigationDrawer(),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(52, 163, 163, 1.0),
          title: Text("Dashboard"),
        ),
        body: HomePage(),
      ),
    );
  }
}
