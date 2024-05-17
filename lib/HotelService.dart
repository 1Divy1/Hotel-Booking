import 'dart:convert';

import 'package:hotel_booking_frontend/models/HotelModel.dart';
import 'package:hotel_booking_frontend/models/UserModel.dart';
import 'package:http/http.dart' as http;

Future<List<HotelModel>?> getHotelsWithinRadius(double userLat, double userLon, double radius) async {

  List<HotelModel> hotels = [];

  try {
    var url = Uri.parse('http://localhost:8080/hotels/get-hotels-within-radius?userLat=$userLat&userLon=$userLon&radius=$radius');
    final response = await http.get(url);

    if(response.statusCode == 200) {
      // il folosim pentru a putea utiliza diacritice
      final utf8decoder = Utf8Decoder();
      String responseBody = utf8decoder.convert(response.bodyBytes);
      var jsonResponse = json.decode(responseBody);

      List<dynamic> hotelsData = jsonResponse;
      if(hotelsData.isNotEmpty) {
        for(var hotelItem in hotelsData) {
          hotels.add(HotelModel.fromJson(hotelItem));
        }
      }
      return hotels;
    }
  }
  catch(e) {
    print(e);
  }
}