import 'package:json_annotation/json_annotation.dart';

part 'family.g.dart';

@JsonSerializable()
class Family {
  String? familyName, familyId, dateRegistered, dateUpdated;
  String? userId, parentFamilyId, parentFamilyName;

  bool isRootFamily = false;

  Family(this.familyName, this.familyId, this.dateRegistered, this.dateUpdated,
      this.userId, this.parentFamilyId, this.parentFamilyName, this.isRootFamily);

  factory Family.fromJson(Map<String, dynamic> json) => _$FamilyFromJson(json);

  Map<String, dynamic> toJson() => _$FamilyToJson(this);
}
