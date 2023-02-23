import 'package:flutter/material.dart';
import 'package:project4/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> location = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Anthens', flag: 'greece.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png')
  ];
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
      body: ListView.builder(
        itemCount: location.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(locations[index].location),
            ),
          );
        },
      ),
    );
  }
}
