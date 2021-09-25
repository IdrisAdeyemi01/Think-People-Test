import 'package:flutter/material.dart';
import 'package:thinkpeople_test/src/authentication/login_view.dart';
import 'package:thinkpeople_test/src/authentication/onboarding.dart';
import 'package:thinkpeople_test/src/authentication/registration_view.dart';
import 'package:thinkpeople_test/src/shared/app_theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      routes: {
        '/': (context) => OnboardingView(),
        RegistrationView.registrationRoute: (context) => RegistrationView(),
        LoginView.loginRoute: (context) => LoginView(),
      },
      initialRoute: '/',
    );
  }
}
