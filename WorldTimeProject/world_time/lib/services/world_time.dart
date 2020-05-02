import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  
  String location; //location name for the UI
  String time; //the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  //constructor
  WorldTime({this.location,this.flag,this.url});
  //async call
  Future<void> getTime() async{

    try {
          //make the request
      Response response=await get('http://worldtimeapi.org/api/timezone/$url');
      Map data=jsonDecode(response.body);
      //print(data); 

      //get properties from data
      String dateTime=data['datetime'];
      String offset=data['utc_offset'].substring(0,3);
      //print(dateTime);
      //print(offset);
      //create time object
      DateTime now=DateTime.parse(dateTime);
      //restarle el offset
      now=now.add(Duration(hours:int.parse(offset)));
      //setTime property
      time=now.toString();
    } catch (e) {
      print('caught error: $e');
      time="could not get time data";
    }

  }
}
