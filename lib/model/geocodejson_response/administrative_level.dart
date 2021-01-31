import 'package:json_annotation/json_annotation.dart';
part 'administrative_level.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class AdministrativeLevel {
  AdministrativeLevel({
    this.level1,
    this.level2,
    this.level3,
    this.level4,
    this.level5,
    this.level6,
    this.level7,
    this.level8,
    this.level9,
    this.level10,
  });

  String level1;
  String level2;
  String level3;
  String level4;
  String level5;
  String level6;
  String level7;
  String level8;
  String level9;
  String level10;

  factory AdministrativeLevel.fromJson(Map<String, dynamic> json) =>
      _$AdministrativeLevelFromJson(json);

  Map<String, dynamic> toJson() => _$AdministrativeLevelToJson(this);
}
