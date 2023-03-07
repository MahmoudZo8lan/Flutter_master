import 'package:json_annotation/json_annotation.dart';
part 'users.g.dart';

@JsonSerializable()
class Users{
  String? username;
  String? email;
  String? password;

  Users({this.username, this.email, this.password});
  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);

}