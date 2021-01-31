// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoded_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodedFeature _$GeocodedFeatureFromJson(Map<String, dynamic> json) {
  return GeocodedFeature(
    properties: json['properties'] == null
        ? null
        : FeatureProperties.fromJson(
            json['properties'] as Map<String, dynamic>),
    type: json['type'] as String,
    geometry: json['geometry'] == null
        ? null
        : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GeocodedFeatureToJson(GeocodedFeature instance) =>
    <String, dynamic>{
      'properties': instance.properties?.toJson(),
      'type': instance.type,
      'geometry': instance.geometry?.toJson(),
    };
