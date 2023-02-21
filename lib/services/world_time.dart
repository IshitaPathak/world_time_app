import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String? location; //location name for  the UI
  String? time; //the time in that location
  String? flag; //url to an asset flag icon
  String? url; //this is the location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    // await Future.delayed(Duration(seconds: 1)); // add a delay of 1 second
    // print(data);

    //get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    print(datetime);
    print(offset);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    //set the time property
    time = now.toString();
  }
}

WorldTime instance =
    WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
