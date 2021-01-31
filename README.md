# reverse_nominatim

OSM Nominatim reverse geocoder.

## Example usage
```dart
() async {
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
  }
```
The meaning of `RevgeocodeRequest` parameters is as in [Nominatim API Reference](https://nominatim.org/release-docs/develop/api/Reverse/).

## Limitations and peculiarities
- This library implements only a single API method — reverse geocoding.
- This library expects a response to be in GeocodeJSON format. GeocodeJSON spec Revision 0.1 is available at https://github.com/geocoders/geocodejson-spec/tree/master/draft
and licensed under a Creative Commons Attribution License (CC0). Not to be confused with more general [GeoJSON](https://tools.ietf.org/html/rfc7946).
- Please [check Nominatim API policy](https://operations.osmfoundation.org/policies/nominatim/) and concider the recomendations below.
- Please don't use Nominatim API for bulk geocoding or any other tasks with lots of API calls.
- Please concider passing an `email` with a `RevgeocodeRequest` to be contacted by OSM team whenever the API use would be considered significant.

## Motivation
- This library is made because [osm_nominatim](https://github.com/jld3103/osm-nominatim) is available only under the viral GPL 3 license hence is unusible in any projects with any other license. No other Nominatim libraries with web support weren't available at pub.dev at the moment.
- On my project this code is used only as a fallback option whenever the main geocoder fails to return a meaningful results.

## License

MIT because I mostly don't care about this code and it wouldn't be nice to use WTFPL as you may want to have third party licenses parsed and present in your project info section and don't want WTFPL there.