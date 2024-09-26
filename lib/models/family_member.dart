import 'package:json_annotation/json_annotation.dart';
part 'family_member.g.dart';
@JsonSerializable()
class FamilyMember {
  String? familyId, familyName, dateRegistered, dateUpdated;
  String? email, cellphone;
  String memberId, dateOfBirth, dateOfDeath;
  MemberType? memberType;
  Gender? gender;
  String firstName, middleNames, lastName;
  FamilyMember(
      this.familyId,
      this.familyName,
      this.dateRegistered,
      this.dateUpdated,
      this.email,
      this.cellphone,
      this.memberId,
      this.dateOfBirth,
      this.dateOfDeath,
      this.memberType,
      this.gender,
      this.firstName,
      this.middleNames,
      this.lastName);

  factory FamilyMember.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberFromJson(json);

  Map<String, dynamic> toJson() => _$FamilyMemberToJson(this);

}

enum MemberType {
  parent,
  child,
}
enum Gender {
  male,
  female,
}