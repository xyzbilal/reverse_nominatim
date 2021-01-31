// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties_geocoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertiesGeocoding _$PropertiesGeocodingFromJson(Map<String, dynamic> json) {
  return PropertiesGeocoding(
    type: json['type'] as String,
    accuracy: json['accuracy'] as int,
    label: json['label'] as String,
    name: json['name'] as String,
    housenumber: json['housenumber'] as String,
    street: json['street'] as String,
    locality: json['locality'] as String,
    postcode: json['postcode'] as String,
    city: json['city'] as String,
    district: json['district'],
    county: json['county'],
    state: json['state'],
    country: json['country'] as String,
    admin: json['admin'] == null
        ? null
        : AdministrativeLevel.fromJson(json['admin'] as Map<String, dynamic>),
    geohash: json['geohash'] as String,
  );
}

Map<String, dynamic> _$PropertiesGeocodingToJson(
        PropertiesGeocoding instance) =>
    <String, dynamic>{
      'accuracy': instance.accuracy,
      'admin': instance.admin?.toJson(),
      'type': instance.type,
      'label': instance.label,
      'name': instance.name,
      'housenumber': instance.housenumber,
      'street': instance.street,
      'locality': instance.locality,
      'postcode': instance.postcode,
      'city': instance.city,
      'district': instance.district,
      'county': instance.county,
      'state': instance.state,
      'country': instance.country,
      'geohash': instance.geohash,
    };
