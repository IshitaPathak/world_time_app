import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map? data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map?;

    print(data);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 124, 0, 0),
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data!['location'],
                  style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 2,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
