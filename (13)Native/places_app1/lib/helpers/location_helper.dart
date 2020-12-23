// import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:http/http.dart' as http;

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/$longitude,$latitude,14.25,0,60/600x300?access_token=${DotEnv().env["MAPBOX_KEY"]}';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    // final url =
    //     'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=${DotEnv().env["GOOGLE_API_KEY"]}';
    // final response = await http.get(url);
    // print(json.decode(response.body));
    // return json.decode(response.body)['results'][0]['formatted_address'];
    return 'F11, The First Street, Florida';
  }
}
