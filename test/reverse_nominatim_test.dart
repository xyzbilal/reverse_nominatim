import 'package:flutter_test/flutter_test.dart';
import 'package:reverse_nominatim/model/revgeocode_request/revgeocode_request.dart';
import 'package:reverse_nominatim/nominatim_client.dart';

void main() {
  test('gets response', () async {
    final client = NominatimClient();
    final result = await client.makeRevgeocodeRequest(
      RevgeocodeRequest(
        lat: 43.02583172792449,
        lon: 131.9018870773583,
        zoom: 18,
        addressDetails: true,
        language: 'en',
      ),
    );
    print(result.toJson());
    expect(result.features.isNotEmpty, true);
  });
}
