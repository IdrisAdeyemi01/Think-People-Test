import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thinkpeople_test/src/authentication/registration_view.dart';
import 'package:thinkpeople_test/src/contents/constants/colors.dart';
import 'package:thinkpeople_test/src/contents/constants/strings.dart';
import 'package:thinkpeople_test/src/contents/utilities/app_images.dart';
import 'package:thinkpeople_test/src/contents/utilities/screen_utility.dart';
import 'package:thinkpeople_test/src/contents/utilities/validation_mixin.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/app_elevated_button.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/app_textformfield.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/background.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/spacing.dart';

class LoginView extends StatefulWidget {
  static const loginRoute = '/loginView';

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with ValidationMixin {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? username;
  String? password;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BackgroundWithBubble(
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppSpacing.height(ScreenUtil.screenHeight(context) * 0.25),
                  Text(
                    AppStrings.loginTitle,
                    style: textTheme.bodyText1,
                  ),
                  AppSpacing.bigHeight(),
                  SvgPicture.asset(
                    AppImages.loginImage,
                    height: ScreenUtil.screenHeight(context) * 0.3,
                  ),
                  AppSpacing.bigHeight(),
                  AppTextFormField(
                    label: AppStrings.username,
                    validator: validateNotEmpty,
                    onChanged: (val) {
                      setState(() {
                        username = val;
                      });
                    },
                  ),
                  AppSpacing.bigHeight(),
                  AppTextFormField(
                    label: AppStrings.password,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    validator: validatePassword,
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                  ),
                  AppSpacing.height(40),
                  Text(
                    AppStrings.forgotPassword,
                    style: textTheme.bodyText2!.copyWith(
                      fontSize: 13,
                      wordSpacing: 0,
                      letterSpacing: 0,
                      color: AppColors.appGrey,
                    ),
                  ),
                  AppSpacing.height(40),
                  AppElevatedButton(
                    buttonLabel: AppStrings.login,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                      'You have successfully registered with the details: '),
                                  AppSpacing.bigHeight(),
                                  Text('Username: $username'),
                                  AppSpacing.tinyHeight(),
                                  Text('Password: $password'),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  AppSpacing.smallHeight(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.dontHaveAccount,
                        style: textTheme.bodyText2!.copyWith(
                          fontSize: 13,
                          wordSpacing: 0,
                          letterSpacing: 0,
                          color: AppColors.appGrey,
                        ),
                      ),
                      AppSpacing.tinyWidth(),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(
                          context,
                          RegistrationView.registrationRoute,
                        ),
                        child: Text(
                          AppStrings.signup,
                          style: textTheme.bodyText1!.copyWith(
                            fontSize: 13,
                            wordSpacing: 0,
                            letterSpacing: 0,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
