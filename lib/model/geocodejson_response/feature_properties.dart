import 'properties_geocoding.dart';
import 'package:json_annotation/json_annotation.dart';
part 'feature_properties.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class FeatureProperties {
  FeatureProperties({
    this.geocoding,
  });

  PropertiesGeocoding? geocoding;

  factory FeatureProperties.fromJson(Map<String, dynamic> json) =>
      _$FeaturePropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$FeaturePropertiesToJson(this);
}
