import 'package:health_app/services/clinicsData.dart';
import 'package:http/http.dart'; //to use the get function
import 'dart:convert'; //to decode the json data


class Location {

  double latitude;
  double longitude;
  String location;
  String specs;
  Response result;

  Location({ this.location, this.specs });

  Future<ClinicData> searchHospitals() async {

    try{

      Response response = await get('https://geocode.search.hereapi.com/v1/geocode?q=$location&apiKey=iKyk0uZypECb9Ibdb5OXiM8TKpjobMkP99gIyPewDyo');
      Map data = jsonDecode(response.body);

      latitude=data['items'][0]['position']['lat'];
      longitude=data['items'][0]['position']['lng'];

      List pieces=specs.split(" ");

      response = await get('https://discover.search.hereapi.com/v1/discover?at=$latitude,$longitude&q=${pieces[0]}+${pieces[1]}+hospital&lang=en-US&apiKey=iKyk0uZypECb9Ibdb5OXiM8TKpjobMkP99gIyPewDyo&limit=4');
      //data = jsonDecode(response.body);

      if(200==response.statusCode) {

        final ClinicData clinics = (clinicDataFromJson(response.body));
        //print(clinics);
        return clinics;

      }
      else {
        print('Loading error');
      }
    }
    catch(e){
      print('Caught error: $e');
    }

  }
}