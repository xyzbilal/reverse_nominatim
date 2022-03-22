import 'dart:convert';

import 'package:dio/dio.dart';
import 'model/revgeocode_request/revgeocode_request.dart';
import 'model/geocodejson_response/feature_collection.dart';

class NominatimClient {


  Future<FeatureCollection?> makeRevgeocodeRequest(
      RevgeocodeRequest request) async {
    try {
      final query = request.buildQueryString();
      final resp =
          await Dio().get('https://nominatim.openstreetmap.org/reverse$query');
      return FeatureCollection.fromJson(json.decode(resp.data));
    } catch (e) {
      throw e;
    }
  }
}
