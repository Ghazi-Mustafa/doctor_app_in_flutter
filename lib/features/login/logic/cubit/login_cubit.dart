import 'package:doctor_app/core/helpers/app_regex.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/login/data/models/login_request_body.dart';

import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:doctor_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  void validateThenDoLogin(BuildContext context) {
    if (formKey.currentState != null) {
      if (formKey.currentState!.validate()) {
        emitLoading();
      }
    }
  }

  void setupPasswordValidation() {
    hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
    hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
    hasMinLength = AppRegex.hasMinLength(passwordController.text);
    hasSpecialCharacters = AppRegex.hasSpecialCharacter(
      passwordController.text,
    );
    hasNumber = AppRegex.hasNumber(passwordController.text);
    emit(
      LoginState.passwordValidate(
        hasLowerCase,
        hasUpperCase,
        hasMinLength,
        hasNumber,
        hasSpecialCharacters,
      ),
    );
  }

  void emitLoading() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.failure(error.apiErrorModel.message));
      },
    );
  }
}
