import 'package:finacy_app/common/constants/app_colors.dart';
import 'package:finacy_app/common/constants/app_text_styles.dart';
import 'package:finacy_app/common/widgets/custom_text_field.dart';
import 'package:finacy_app/common/widgets/password_form_field.dart';
import 'package:finacy_app/common/widgets/primary_button.dart';
import 'package:finacy_app/features/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Start Saving',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText
                .copyWith(color: AppColors.greenlightOTwo),
          ),
          Text(
            'Your Money!',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText.copyWith(color: AppColors.grey),
          ),
          Expanded(
            child: Image.asset('assets/images/list.png'),
          ),
          Form(
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: 'your name',
                  hintText: 'John Doe',
                ),
                CustomTextFormField(
                  labelText: 'your email',
                  hintText: 'mail@email.com',
                ),
                PasswordFormField(
                    labelText: "Choose your password", hintText: "123456#Abcd"),
                PasswordFormField(
                  labelText: "Confirm your password",
                  hintText: "***********",
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: PrimaryButton(
              text: 'Sign Up',
              onPressed: () {},
            ),
          ),
          MultiTextButton(
            onPressed: () => print('Tap'),
            children: [
              Text('Already have account? ',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.grey,
                  )),
              Text(
                'Log In',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.greenlightOne,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
