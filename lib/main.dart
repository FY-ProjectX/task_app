import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/pages/CustomerDashboard.dart';
import 'package:task_app/pages/CustomerProfile.dart';
import 'package:task_app/pages/DeliveryProfilePage.dart';

import 'pages/LoginPage.dart';
import 'pages/AddOrderPage.dart';
import 'pages/RegisterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(
            name: '/login',
            page: () => LoginPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/register',
            page: () => RegisterPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/customerdashboard',
            page: () => CustomerDashboard(),
            transition: Transition.zoom),
        GetPage(
            name: '/customerprofile',
            page: () => CustomerProfile(),
            transition: Transition.zoom),
        GetPage(
            name: '/addorderpage',
            page: () => AddOrderPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/deliveryprofile',
            page: () => DeliveryProfilePage(),
            transition: Transition.zoom),
      ],
      title: 'Project X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Project X'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.3,
              child: ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  Get.toNamed('/login');
                },
                style: ElevatedButton.styleFrom(
                  // primary: Colors.red,
                  // onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.3,
              child: ElevatedButton(
                child: Text('Register'),
                onPressed: () {
                  Get.toNamed('/register');
                },
                style: ElevatedButton.styleFrom(
                  // primary: Colors.red,
                  // onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
