import 'package:json_annotation/json_annotation.dart';

part 'family.g.dart';

@JsonSerializable()
class Family {
  String? familyName, familyId, dateRegistered, dateUpdated;
  String? userId, parentFamilyId;


  Family(this.familyName, this.familyId, this.dateRegistered, this.dateUpdated,
      this.userId, this.parentFamilyId);

  factory Family.fromJson(Map<String, dynamic> json) => _$FamilyFromJson(json);

  Map<String, dynamic> toJson() => _$FamilyToJson(this);
}
