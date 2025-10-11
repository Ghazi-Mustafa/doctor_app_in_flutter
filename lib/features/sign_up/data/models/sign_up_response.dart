import 'package:doctor_app/features/login/data/models/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String message;
  UserData data;
  bool status;
  int code;
  SignUpResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
