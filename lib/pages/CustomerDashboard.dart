import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(CustomerDashboard());

class CustomerDashboard extends StatefulWidget {
  @override
  State<CustomerDashboard> createState() => _CustomerDashboardState();
}

class _CustomerDashboardState extends State<CustomerDashboard> {
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
                text: 'Home', icon: Icons.home, next: '/customerdashboard'),
            const SizedBox(height: 20),
            buildMenuItem(
                text: 'Profile',
                icon: Icons.people,
                next: '/cusomterprofilepage'),
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
                text: 'Logout',
                icon: Icons.logout_outlined,
                next: '/customerdashboard'),
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
        Get.toNamed(next);
      },
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
