import 'package:flutter/material.dart';
import 'package:thinkpeople_test/src/authentication/login_view.dart';
import 'package:thinkpeople_test/src/contents/constants/colors.dart';
import 'package:thinkpeople_test/src/contents/constants/strings.dart';
import 'package:thinkpeople_test/src/contents/utilities/screen_utility.dart';
import 'package:thinkpeople_test/src/contents/utilities/validation_mixin.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/app_elevated_button.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/app_textformfield.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/background.dart';
import 'package:thinkpeople_test/src/shared/shared_widgets/spacing.dart';

class RegistrationView extends StatefulWidget {
  static const registrationRoute = '/registrationView';

  @override
  _RegistrationViewState createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView>
    with ValidationMixin {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? name;
  String? email;
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
                  AppStrings.registrationTitle,
                  style: textTheme.bodyText1,
                ),
                AppSpacing.bigHeight(),
                Text(
                  AppStrings.registrationLabel,
                  textAlign: TextAlign.center,
                ),
                AppSpacing.largeHeight(),
                AppTextFormField(
                  label: AppStrings.name,
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                  validator: validateNotEmpty,
                ),
                AppSpacing.bigHeight(),
                AppTextFormField(
                  label: AppStrings.email,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (val) {
                    email = val;
                  },
                  validator: validateEmail,
                ),
                AppSpacing.bigHeight(),
                AppTextFormField(
                  label: AppStrings.username,
                  onChanged: (val) {
                    setState(() {
                      username = val;
                    });
                  },
                  validator: validateNotEmpty,
                ),
                AppSpacing.bigHeight(),
                AppTextFormField(
                  obscureText: true,
                  label: AppStrings.password,
                  textInputAction: TextInputAction.done,
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                  validator: validatePassword,
                ),
                AppSpacing.height(100),
                AppElevatedButton(
                  buttonLabel: AppStrings.register,
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
                                Text('Name: $name'),
                                AppSpacing.tinyHeight(),
                                Text('Email: $email'),
                                AppSpacing.tinyHeight(),
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
                      AppStrings.alreadyHaveAccount,
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
                        LoginView.loginRoute,
                      ),
                      child: Text(
                        AppStrings.signin,
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
    ));
  }
}
