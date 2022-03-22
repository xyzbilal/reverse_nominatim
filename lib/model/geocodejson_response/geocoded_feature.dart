import 'feature_properties.dart';
import 'geometry.dart';
part 'geocoded_feature.g.dart';


class GeocodedFeature {
  GeocodedFeature({
    this.properties,
    this.type,
    this.geometry,
  });

  FeatureProperties? properties;
  String? type;
  Geometry? geometry;

  factory GeocodedFeature.fromJson(Map<String, dynamic> json) =>
      _$GeocodedFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$GeocodedFeatureToJson(this);
}
