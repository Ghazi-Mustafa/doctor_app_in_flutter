import 'package:doctor_app/core/helpers/app_regex.dart';
import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());
  final SignUpRepo _signUpRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  void validateThenSignUp() {
    if (formKey.currentState != null) {
      if (formKey.currentState!.validate()) {
        emitSignUp();
      }
    }
  }

  void emitSignUp() async {
    emit(SignUpState.loading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: 0,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
      ),
    );
    print(response);
    response.when(
      success: (response) {
        print("success,here");
        emit(SignUpState.success(response));
      },
      failure: (error) {
        print("error,here");
        emit(SignUpState.failure(ErrorHandler.handle(error).toString()));
      },
    );
  }

  void emitPasswordValidation() {
    hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
    hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
    hasMinLength = AppRegex.hasMinLength(passwordController.text);
    hasSpecialCharacters = AppRegex.hasSpecialCharacter(
      passwordController.text,
    );
    hasNumber = AppRegex.hasNumber(passwordController.text);
    emit(
      SignUpState.passwordValidate(
        hasLowerCase,
        hasUpperCase,
        hasMinLength,
        hasNumber,
        hasSpecialCharacters,
      ),
    );
  }
}
