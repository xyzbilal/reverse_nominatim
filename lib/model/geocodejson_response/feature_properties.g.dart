// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeatureProperties _$FeaturePropertiesFromJson(Map<String, dynamic> json) {
  return FeatureProperties(
    geocoding: json['geocoding'] == null
        ? null
        : PropertiesGeocoding.fromJson(
            json['geocoding'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeaturePropertiesToJson(FeatureProperties instance) =>
    <String, dynamic>{
      'geocoding': instance.geocoding?.toJson(),
    };
