import 'package:json_annotation/json_annotation.dart';
part 'member_image.g.dart';
@JsonSerializable()
class MemberImage {
  String? url, memberName, dateRegistered;
  String? thumbUrl;
  String? memberId, familyId, familyName, memberImageId, filePath;


  MemberImage(this.url, this.memberName, this.dateRegistered, this.thumbUrl,
      this.memberId, this.familyId, this.memberImageId, this.familyName, this.filePath);

  factory MemberImage.fromJson(Map<String, dynamic> json) =>
      _$MemberImageFromJson(json);

  Map<String, dynamic> toJson() => _$MemberImageToJson(this);

}
