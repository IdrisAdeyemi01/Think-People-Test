import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thinkpeople_test/src/authentication/registration_view.dart';
import 'package:thinkpeople_test/src/contents/constants/strings.dart';
import 'package:thinkpeople_test/src/contents/utilities/app_images.dart';
import 'package:thinkpeople_test/src/contents/utilities/screen_utility.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/app_elevated_button.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/background.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/spacing.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BackgroundWithBubble(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSpacing.height(ScreenUtil.screenHeight(context) * 0.25),
            SvgPicture.asset(
              AppImages.onboardingImage,
              height: ScreenUtil.screenHeight(context) * 0.3,
            ),
            AppSpacing.smallHeight(),
            Text(
              AppStrings.onboardingTitle,
              style: textTheme.bodyText1,
            ),
            AppSpacing.largeHeight(),
            Text(
              AppStrings.onboardingLabel,
              textAlign: TextAlign.center,
            ),
            AppSpacing.height(70),
            AppElevatedButton(
              buttonLabel: AppStrings.getStarted,
              onPressed: () => Navigator.pushNamed(
                context,
                RegistrationView.registrationRoute,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
