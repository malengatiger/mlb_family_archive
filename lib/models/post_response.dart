import 'package:json_annotation/json_annotation.dart';

import 'media.dart';

part 'post_response.g.dart';

@JsonSerializable()
class PostResponse {
  String? memberName, familyId, memberId, dateRegistered, userId;
  List<Media> mediaList = [];
  String? postResponseId, postId;
  PostResponse(
      this.memberName,
      this.familyId,
      this.memberId,
      this.dateRegistered,
      this.userId, this.mediaList,
      this.postResponseId,
      this.postId);

  factory PostResponse.fromJson(Map<String, dynamic> json) => _$PostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostResponseToJson(this);
}

