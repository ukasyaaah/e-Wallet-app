import 'package:bank_sha_project/shared/theme.dart';
import 'package:bank_sha_project/ui/pages/home_page.dart';
import 'package:bank_sha_project/ui/pages/onboarding_pages.dart';
import 'package:bank_sha_project/ui/pages/pin_page.dart';
import 'package:bank_sha_project/ui/pages/profile_page.dart';
import 'package:bank_sha_project/ui/pages/sign_in_page.dart';
import 'package:bank_sha_project/ui/pages/sign_up_page.dart';
import 'package:bank_sha_project/ui/pages/sign_up_set_ktp.dart';
import 'package:bank_sha_project/ui/pages/sign_up_set_profile.dart';
import 'package:bank_sha_project/ui/pages/sign_up_success_page.dart';
import 'package:bank_sha_project/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semibold,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPages(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpUpSetProfilePage(),
        '/sign-up-set-ktp': (context) => const SignUpUpSetKtpPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
      },
    );
  }
}
