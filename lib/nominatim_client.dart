import 'dart:convert';

import 'package:http/http.dart';
import 'model/revgeocode_request/revgeocode_request.dart';
import 'model/geocodejson_response/feature_collection.dart';

class NominatimClient {
  final _http = Client();

  Future<FeatureCollection> makeRevgeocodeRequest(
      RevgeocodeRequest request) async {
    try {
      final query = request.buildQueryString();
      final resp =
          await _http.get('https://nominatim.openstreetmap.org/reverse$query');
      return FeatureCollection.fromJson(json.decode(resp.body));
    } catch (e) {
      throw e;
    }
  }
}
