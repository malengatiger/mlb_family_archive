import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? firstName, middleNames, lastName, indicator;
  String? email, cellphone;
  String userId;

  User(this.firstName, this.middleNames, this.lastName, this.indicator,
      this.email, this.cellphone, this.userId);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
