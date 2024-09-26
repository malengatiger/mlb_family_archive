import 'package:json_annotation/json_annotation.dart';
import 'package:mlb_family_archive/models/media.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  String? memberName, familyId, memberId, dateRegistered, dateUpdated, userId;
  List<Media> mediaList = [];
  PostType? postType;
  String? title, description, postId;


  Post(
      this.memberName,
      this.familyId,
      this.memberId,
      this.dateRegistered,
      this.dateUpdated,
      this.userId,
      this.mediaList,
      this.postType,
      this.title,
      this.description,
      this.postId);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}

enum PostType {
  documentUpload,
  imageUpload,
  videoUpload,
  audioUpload,
  text,
  announcement,
  event,
  birth,
  death
}
