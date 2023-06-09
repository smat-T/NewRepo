import 'package:flutter/material.dart';
import 'package:socialapp/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:socialapp/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:socialapp/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:socialapp/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:socialapp/presentation/who_are_you_screen/who_are_you_screen.dart';
import 'package:socialapp/presentation/whats_your_name_screen/whats_your_name_screen.dart';
import 'package:socialapp/presentation/upload_pictures_screen/upload_pictures_screen.dart';
import 'package:socialapp/presentation/date_of_birth_screen/date_of_birth_screen.dart';
import 'package:socialapp/presentation/we_are_all_done_screen/we_are_all_done_screen.dart';
import 'package:socialapp/presentation/home_screen_one_screen/home_screen_one_screen.dart';
import 'package:socialapp/presentation/profile_screen/profile_screen.dart';
import 'package:socialapp/presentation/status_screen/status_screen.dart';
import 'package:socialapp/presentation/notification_screen/notification_screen.dart';
import 'package:socialapp/presentation/message_screen/message_screen.dart';
import 'package:socialapp/presentation/chat_screen/chat_screen.dart';
import 'package:socialapp/presentation/reels_screen/reels_screen.dart';
import 'package:socialapp/presentation/video_screen/video_screen.dart';
import 'package:socialapp/presentation/donation_screen/donation_screen.dart';
import 'package:socialapp/presentation/donation_pay_screen/donation_pay_screen.dart';
import 'package:socialapp/presentation/thank_you_donation_screen/thank_you_donation_screen.dart';
import 'package:socialapp/presentation/thank_you_donation_screen_one_screen/thank_you_donation_screen_one_screen.dart';
import 'package:socialapp/presentation/splash_screen/splash_screen.dart';
import 'package:socialapp/presentation/ecom_screen/ecom_screen.dart';
import 'package:socialapp/presentation/ecom_home_screen/ecom_home_screen.dart';
import 'package:socialapp/presentation/add_to_cart_screen/add_to_cart_screen.dart';
import 'package:socialapp/presentation/shopping_cartscreen_screen/shopping_cartscreen_screen.dart';
import 'package:socialapp/presentation/status_screen_screen_one_screen/status_screen_screen_one_screen.dart';
import 'package:socialapp/presentation/status_screen_screen_two_screen/status_screen_screen_two_screen.dart';
import 'package:socialapp/presentation/status_screen_screen_three_screen/status_screen_screen_three_screen.dart';
import 'package:socialapp/presentation/welcome_to_afsoen_one_screen/welcome_to_afsoen_one_screen.dart';
import 'package:socialapp/presentation/welcome_to_afsoen_screen/welcome_to_afsoen_screen.dart';
import 'package:socialapp/presentation/checkout_screen/checkout_screen.dart';
import 'package:socialapp/presentation/thank_you_ecomm_screen/thank_you_ecomm_screen.dart';
import 'package:socialapp/presentation/checkout_addaddress_screen/checkout_addaddress_screen.dart';
import 'package:socialapp/presentation/donation_pay_screen_one_screen/donation_pay_screen_one_screen.dart';
import 'package:socialapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String whoAreYouScreen = '/who_are_you_screen';

  static const String whatsYourNameScreen = '/whats_your_name_screen';

  static const String uploadPicturesScreen = '/upload_pictures_screen';

  static const String dateOfBirthScreen = '/date_of_birth_screen';

  static const String weAreAllDoneScreen = '/we_are_all_done_screen';

  static const String homeScreenOneScreen = '/home_screen_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String statusScreen = '/status_screen';

  static const String notificationScreen = '/notification_screen';

  static const String messageScreen = '/message_screen';

  static const String chatScreen = '/chat_screen';

  static const String reelsScreen = '/reels_screen';

  static const String videoScreen = '/video_screen';

  static const String donationScreen = '/donation_screen';

  static const String donationPayScreen = '/donation_pay_screen';

  static const String thankYouDonationScreen = '/thank_you_donation_screen';

  static const String thankYouDonationScreenOneScreen =
      '/thank_you_donation_screen_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String ecomScreen = '/ecom_screen';

  static const String ecomHomeScreen = '/ecom_home_screen';

  static const String addToCartScreen = '/add_to_cart_screen';

  static const String shoppingCartscreenScreen = '/shopping_cartscreen_screen';

  static const String statusScreenScreenOneScreen =
      '/status_screen_screen_one_screen';

  static const String statusScreenScreenTwoScreen =
      '/status_screen_screen_two_screen';

  static const String statusScreenScreenThreeScreen =
      '/status_screen_screen_three_screen';

  static const String welcomeToAfsoenOneScreen =
      '/welcome_to_afsoen_one_screen';

  static const String welcomeToAfsoenScreen = '/welcome_to_afsoen_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String thankYouEcommScreen = '/thank_you_ecomm_screen';

  static const String checkoutAddaddressScreen = '/checkout_addaddress_screen';

  static const String donationPayScreenOneScreen =
      '/donation_pay_screen_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    signUpScreen: (context) => SignUpScreen(),
    verificationCodeScreen: (context) => VerificationCodeScreen(),
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    whoAreYouScreen: (context) => WhoAreYouScreen(),
    whatsYourNameScreen: (context) => WhatsYourNameScreen(),
    uploadPicturesScreen: (context) => UploadPicturesScreen(),
    dateOfBirthScreen: (context) => DateOfBirthScreen(),
    weAreAllDoneScreen: (context) => WeAreAllDoneScreen(),
    homeScreenOneScreen: (context) => HomeScreenOneScreen(),
    profileScreen: (context) => ProfileScreen(),
    statusScreen: (context) => StatusScreen(),
    notificationScreen: (context) => NotificationScreen(),
    messageScreen: (context) => MessageScreen(),
    chatScreen: (context) => ChatScreen(),
    reelsScreen: (context) => ReelsScreen(),
    videoScreen: (context) => VideoScreen(),
    donationScreen: (context) => DonationScreen(),
    donationPayScreen: (context) => DonationPayScreen(),
    thankYouDonationScreen: (context) => ThankYouDonationScreen(),
    thankYouDonationScreenOneScreen: (context) =>
        ThankYouDonationScreenOneScreen(),
    splashScreen: (context) => SplashScreen(),
    ecomScreen: (context) => EcomScreen(),
    ecomHomeScreen: (context) => EcomHomeScreen(),
    addToCartScreen: (context) => AddToCartScreen(),
    shoppingCartscreenScreen: (context) => ShoppingCartscreenScreen(),
    statusScreenScreenOneScreen: (context) => StatusScreenScreenOneScreen(),
    statusScreenScreenTwoScreen: (context) => StatusScreenScreenTwoScreen(),
    statusScreenScreenThreeScreen: (context) => StatusScreenScreenThreeScreen(),
    welcomeToAfsoenOneScreen: (context) => WelcomeToAfsoenOneScreen(),
    welcomeToAfsoenScreen: (context) => WelcomeToAfsoenScreen(),
    checkoutScreen: (context) => CheckoutScreen(),
    thankYouEcommScreen: (context) => ThankYouEcommScreen(),
    checkoutAddaddressScreen: (context) => CheckoutAddaddressScreen(),
    donationPayScreenOneScreen: (context) => DonationPayScreenOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
