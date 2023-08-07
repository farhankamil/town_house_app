import 'package:flutter/material.dart';
import 'package:town_house_app/shared/theme.dart';
import 'package:town_house_app/ui/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
            fontWeight: semiBold,
          ),
        ),
      ),
      routes: {
        // '/': (context) => const SplashPage(),
        // '/onboarding': (context) => const OnboardingPage(),
        // '/sign-in': (context) => const SignInPage(),
        // '/sign-up': (context) => const SignUpPage(),
        // '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        // '/sign-up-set-ktp': (context) => const SignUpSetKtpPage(),
        // '/sign-up-success-page': (context) => const SignUpSuccessPage(),
        '/': (context) => const HomePage(),
        // '/profile': (context) => const ProfilePage(),
        // '/pin': (context) => const PinPage(),
        // '/profile-edit-page': (context) => const ProfileEditPage(),
        // '/profile-edit-pin': (context) => const ProfileEditPinPage(),
        // '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
        // '/topup': (context) => const TopUpPage(),
        // '/topup-amount': (context) => const TopupAmountPage(),
        // '/topup-success': (context) => const TopupSuccessPage(),
        // '/transfer': (context) => const TransferPage(),
        // '/transfer-amount': (context) => const TransferAmountPage(),
        // '/transfer-success': (context) => const TransferSuccessPage(),
        // '/data-provider': (context) => const DataProviderPage(),
        // '/data-package': (context) => const DataPackagePage(),
        // '/data-success': (context) => const DataSuccessPage(),
      },
    );
  }
}
