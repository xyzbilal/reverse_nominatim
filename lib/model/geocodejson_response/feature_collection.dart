import 'geocoded_feature.dart';
import 'geocoding.dart';
import 'package:json_annotation/json_annotation.dart';
part 'feature_collection.g.dart';

// FeatureCollection implements
// GeocodeJSON-spec
// Revision 0.1
// licensed under a Creative Commons Attribution License (CC0)
// as found here:
// https://github.com/geocoders/geocodejson-spec/tree/master/draft
@JsonSerializable(explicitToJson: true, nullable: true)
class FeatureCollection {
  FeatureCollection({
    this.type,
    this.geocoding,
    this.features,
  });

  String type;
  Geocoding geocoding;
  List<GeocodedFeature> features;

  factory FeatureCollection.fromJson(Map<String, dynamic> json) =>
      _$FeatureCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureCollectionToJson(this);
}
