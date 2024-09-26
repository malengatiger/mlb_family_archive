import 'package:json_annotation/json_annotation.dart';
part 'member_image.g.dart';
@JsonSerializable()
class MemberImage {
  String? url, memberName, dateRegistered;
  String? thumbUrl;
  String memberId, familyId;


  MemberImage(this.url, this.memberName, this.dateRegistered, this.thumbUrl,
      this.memberId, this.familyId);

  factory MemberImage.fromJson(Map<String, dynamic> json) =>
      _$MemberImageFromJson(json);

  Map<String, dynamic> toJson() => _$MemberImageToJson(this);

}
