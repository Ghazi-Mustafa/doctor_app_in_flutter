import 'package:doctor_app/core/helpers/app_regex.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors_manager.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/logic/cubit/login_state.dart';
import 'package:doctor_app/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});
  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObsecureText = true;
  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().setupPasswordValidation();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: "Password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid password";
              }
            },
            onChanged: (value) {
              context.read<LoginCubit>().setupPasswordValidation();
            },
            controller: context.read<LoginCubit>().passwordController,
            isObscureText: isObsecureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecureText = !isObsecureText;
                });
              },
              child: Icon(
                isObsecureText ? Icons.visibility_off : Icons.visibility,
                color: ColorsManager.mainBlue,
              ),
            ),
          ),
          verticalSpace(24),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              if (state is Validate) {
                return PasswordValidations(
                  hasLowerCase: state.hasLowerCase,
                  hasUpperCase: state.hasUpperCase,
                  hasMinLength: state.hasMinLength,
                  hasNumber: state.hasNumber,
                  hasSpecialCharacters: 
                      state.hasSpecialCharacters,
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
