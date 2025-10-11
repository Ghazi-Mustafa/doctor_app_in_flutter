import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/colors_manager.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:doctor_app/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:doctor_app/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.h),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account", style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignUpForm(),
                    verticalSpace(40),
                    AppTextButton(
                      onPressed: () {
                        context.read<SignUpCubit>().validateThenSignUp();
                      },
                      textStyle: TextStyles.font16WhiteSemiBold,
                      buttonText: "Create Account",
                    ),
                    verticalSpace(16),
                    TermsAndConditions(condition: "sign up"),
                    verticalSpace(30),
                    AlreadyHaveAccount(),
                    BlocListener<SignUpCubit, SignUpState>(
                      listenWhen: (previous, current) =>
                          current is Loading ||
                          current is Success ||
                          current is Failure,
                      listener: (context, state) {
                        state.whenOrNull(
                          loading: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    color: ColorsManager.mainBlue,
                                  ),
                                );
                              },
                            );
                          },
                          success: (data) {
                            context.pop();
                            print("success");
                            showSuccessDialog(context);
                          },
                          failure: (error) {
                            context.pop();
                            setupErrorState(context, error);
                          },
                        );
                      },
                      child: SizedBox.shrink(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Signup Successful'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Congratulations, you have signed up successfully!'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              disabledForegroundColor: Colors.grey.withValues(alpha: 0.33),
            ),
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
            child: const Text('Continue'),
          ),
        ],
      );
    },
  );
}

void setupErrorState(BuildContext context, String error) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(Icons.error, color: Colors.red, size: 32),
      content: Text(error, style: TextStyles.font15DarkBlueMedium),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text('Got it', style: TextStyles.font14BlueSemiBold),
        ),
      ],
    ),
  );
}
