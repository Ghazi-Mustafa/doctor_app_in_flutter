import 'package:doctor_app/features/sign_up/data/models/sign_up_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success(T data) = Success<T>;
  const factory SignUpState.failure(String error) = Failure;
  const factory SignUpState.passwordValidate(
    bool hasLowerCase,
    bool hasUpperCase,
    bool hasMinLength,
    bool hasNumber,
    bool hasSpecialCharacters,
  ) = Validate;
}
