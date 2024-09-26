import 'package:json_annotation/json_annotation.dart';

part 'member_location.g.dart';

@JsonSerializable()
class MemberLocation {
  String? memberName, memberId, dateRegistered;
  String? userId;
  double? latitude, longitude;
  String? hash;


  MemberLocation(this.memberName, this.memberId, this.dateRegistered,
      this.userId, this.latitude, this.longitude, this.hash);

  factory MemberLocation.fromJson(Map<String, dynamic> json) => _$MemberLocationFromJson(json);

  Map<String, dynamic> toJson() => _$MemberLocationToJson(this);
}
