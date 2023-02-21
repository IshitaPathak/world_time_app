import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Choose Location'),
          elevation: 0,
          centerTitle: true,
        ),
        body: TextButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('counter is $counter'),
        ));
  }
}
