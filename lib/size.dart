import 'package:flutter/material.dart';

class SizePage extends StatefulWidget {
  const SizePage({Key? key}) : super(key: key);

  @override
  State<SizePage> createState() => _SizePageState();
}

class _SizePageState extends State<SizePage> {
  get name => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recepeint Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        "assets/Box.jpg",
                        width: 50,
                      ),
                      title: const Text('Medium Size'),
                      subtitle: const Text('Max: 25kg, 16x18x32 cm'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white70, width: 0.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter Name',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white70, width: 0.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter Email',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white70, width: 0.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter Phone Number',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white70, width: 0.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter Address',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Column(
                children: [
                  MaterialButton(
                      height: 40.0,
                      minWidth: 100.0,
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      splashColor: Colors.redAccent,
                      child: const Text('Proceed '),
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Size'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        "assets/Box.jpg",
                        width: 50,
                      ),
                      title: const Text('Small Size'),
                      subtitle: const Text('Max: 25kg, 16x18x32 cm'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),

              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        "assets/Box.jpg",
                        width: 50,
                      ),
                      title: const Text('Medium Size'),
                      subtitle: const Text('Max: 25kg, 16x18x32 cm'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        "assets/Box.jpg",
                        width: 50,
                      ),
                      title: const Text('Large Size'),
                      subtitle: const Text('Max: 25kg, 16x18x32 cm'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset(
                        "assets/Box.jpg",
                        width: 50,
                      ),
                      title: const Text('Custom Size'),
                      subtitle: const Text('Max: 25kg, 16x18x32 cm'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text(''),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors

              Column(
                children: [
                  MaterialButton(
                      height: 40.0,
                      minWidth: 100.0,
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      splashColor: Colors.redAccent,
                      child: const Text('Proceed '),
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
    // @override
    // Widget build(BuildContext context) {
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Second Screen'),
    //     ),
    //     body: Center(
    //       child: ElevatedButton(
    //         // Within the SecondScreen widget
    //         onPressed: () {
    //           // Navigate back to the first screen by popping the current route
    //           // off the stack.
    //           Navigator.pop(context);
    //         },
    //         child: const Text('Go back!'),
    //       ),
    //     ),
    //   );
    // }
  }
}
