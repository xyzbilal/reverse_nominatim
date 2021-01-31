import 'package:json_annotation/json_annotation.dart';
part 'geometry.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class Geometry {
  Geometry({
    this.coordinates,
    this.type,
  });

  List<double> coordinates;
  String type;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}
