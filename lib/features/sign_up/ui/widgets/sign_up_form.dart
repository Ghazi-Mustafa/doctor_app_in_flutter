import 'package:doctor_app/core/helpers/app_regex.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/ui/widgets/password_validations.dart';
import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObsecure = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SignUpCubit>().emitPasswordValidation();
  }

  @override
  Widget build(BuildContext context) {
    SignUpCubit signUpCubit = context.read<SignUpCubit>();
    return Form(
      key: signUpCubit.formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<SignUpCubit>().nameController,
            hintText: "Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: signUpCubit.emailController,
            hintText: "Email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: signUpCubit.phoneController,
            hintText: "Phone",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: signUpCubit.passwordController,
            hintText: "Password",
            isObscureText: isObsecure,
            onChanged: (_) {
              signUpCubit.emitPasswordValidation();
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
              child: isObsecure
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: signUpCubit.confirmPasswordController,
            hintText: "Password Confirmation",
            isObscureText: isObsecure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
              child: isObsecure
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(24),
          BlocBuilder<SignUpCubit, SignUpState>(
            buildWhen: (previous, current) => current is Validate,
            builder: (context, state) {
              if (state is Validate) {
                return PasswordValidations(
                  hasLowerCase: state.hasLowerCase,
                  hasUpperCase: state.hasUpperCase,
                  hasSpecialCharacters: state.hasSpecialCharacters,
                  hasNumber: state.hasNumber,
                  hasMinLength: state.hasMinLength,
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
