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
    data = data!.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map?;

    print(data);

    //set background
    String bgImg = data!['isDaytime'] ? 'day.jpg' : 'night.jpg';
    Color? bgColor =
        data!['isDaytime'] ? Colors.blue : Color.fromARGB(255, 3, 11, 55);
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/$bgImg'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 124, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () async {
                  dynamic result =
                      await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data = {
                      'time': result['time'],
                      'location': result['location'],
                      'isDayTime': result['iDayTime'],
                      'flag': result['flag']
                    };
                  });
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Color.fromARGB(255, 219, 215, 215),
                ),
                label: Text(
                  'Edit Location',
                  style: TextStyle(color: Color.fromARGB(255, 219, 215, 215)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data!['location'],
                    style: TextStyle(
                      fontSize: 34,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Text(
                data!['time'],
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
