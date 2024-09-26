import 'package:json_annotation/json_annotation.dart';
part 'media.g.dart';
@JsonSerializable()
class Media {
  String? mediaId, dateRegistered, dateUpdated;
  String? title, description, postId;
  String? userId, url, thumbUrl, filePath;
  MediaType? mediaType;


  Media(
      this.mediaId,
      this.dateRegistered,
      this.dateUpdated,
      this.title,
      this.description,
      this.postId,
      this.userId,
      this.url,
      this.thumbUrl,
      this.mediaType, this.filePath);

  factory Media.fromJson(Map<String, dynamic> json) =>
      _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);

}

enum MediaType {
  document,
  image,
  video,
  audio,
}