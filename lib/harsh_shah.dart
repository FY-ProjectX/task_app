import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class NavigationDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'Home',
              icon: Icons.home,
            ),
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'Profile',
              icon: Icons.people,
            ),
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'Trip History',
              icon: Icons.update,
            ),
            const SizedBox(height: 20),
            buildMenuItem(text: 'Payment Method', icon: Icons.payment),
            const SizedBox(height: 24),
            Divider(color: Colors.white),
            const SizedBox(height: 24),
            const SizedBox(height: 20),
            buildMenuItem(
              text: 'About',
              icon: Icons.help,
            ),
            const SizedBox(height: 20),
            buildMenuItem(text: 'Help', icon: Icons.help),
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Logout',
              icon: Icons.logout_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white24;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: () {},
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
              hoverColor: Colors.blue,
              onTap: () {
                print("Hii");
              },
            );
          }),
    );
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: "Dashboard",
      home: Scaffold(
          drawer: NavigationDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Dashboard"),
          ),
          body: new ListViewBuilder()),
    );
  }
}
