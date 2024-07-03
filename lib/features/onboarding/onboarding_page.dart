import 'package:finacy_app/common/constants/app_colors.dart';
import 'package:finacy_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            const SizedBox(
              height: 60.0,
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.iceWhite,
                child: Image.asset('assets/images/man.png'),
              ),
            ),
            Text(
              'Spend Smarter ',
              style: AppTextStyles.mediumText
                  .copyWith(color: AppColors.greenlightOTwo),
            ),
            Text(
              'Save More',
              style: AppTextStyles.mediumText
                  .copyWith(color: AppColors.greenlightOTwo),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: PrimaryButton(
                text: 'Get Started',
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
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}

class MultiTextButton extends StatelessWidget {
  final List<Text> children;
  final VoidCallback onPressed;
  const MultiTextButton(
      {super.key, required this.children, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
