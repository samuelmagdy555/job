
import 'package:flutter/material.dart';
import '../../features/apply_job/view/screens/apply_job_screen.dart';
import '../../features/apply_job/view/screens/apply_successfully.dart';
import '../../features/apply_job/view/screens/job_details.dart';
import '../../features/apply_job/view/widgets/image_screen.dart';
import '../../features/apply_job/view/widgets/pdf_screen.dart';
import '../../features/create_account/view/screens/location_register_screen.dart';
import '../../features/create_account/view/screens/register_screen.dart';
import '../../features/create_account/view/screens/success_register_screen.dart';
import '../../features/create_account/view/screens/work_register_screen.dart';
import '../../features/forgot_password/view/screens/checkmail_password_screen.dart';
import '../../features/forgot_password/view/screens/create_new_password.dart';
import '../../features/forgot_password/view/screens/forgotpassword_screen.dart';
import '../../features/forgot_password/view/screens/success_ForgotPassword_screen.dart';
import '../../features/home/view/screens/home_screen.dart';
import '../../features/home_layout/view/screens/layout_app.dart';
import '../../features/login/view/screens/login_screen.dart';
import '../../features/notification/view/notification_screen.dart';
import '../../features/onboarding/view/screens/onboarding_screen.dart';
import '../../features/profile/model/pdf_args.dart';
import '../../features/profile/view/screen/complete_profile_screen.dart';
import '../../features/profile/view/screen/edit_details_screen.dart';
import '../../features/profile/view/screen/education_screen.dart';
import '../../features/profile/view/screen/experience_screen.dart';
import '../../features/profile/view/screen/help_center_screen.dart';
import '../../features/profile/view/screen/language_screen.dart';
import '../../features/profile/view/screen/login_security_screen.dart';
import '../../features/profile/view/screen/login_security_screens/change_password.dart';
import '../../features/profile/view/screen/login_security_screens/email_address_screen.dart';
import '../../features/profile/view/screen/login_security_screens/phone_number_screen.dart';
import '../../features/profile/view/screen/login_security_screens/two_step_verification_1.dart';
import '../../features/profile/view/screen/login_security_screens/two_step_verification_2.dart';
import '../../features/profile/view/screen/login_security_screens/two_step_verification_3.dart';
import '../../features/profile/view/screen/login_security_screens/two_step_verification_4.dart';
import '../../features/profile/view/screen/notification_settings_screen.dart';
import '../../features/profile/view/screen/portfolio_screen.dart';
import '../../features/profile/view/screen/privacy_policy_screen.dart';
import '../../features/profile/view/screen/terms_conditions_screen.dart';
import '../../features/saved_job/model/favourite_model.dart';
import '../../features/search/view/screens/search_screen.dart';
import '../../features/splash/view/screens/splash_screen.dart';
import '../animations/page_slide_transition.dart';
import 'app_route.dart';

Route? onGenerateRouter(RouteSettings settings){
  switch(settings.name){
    case AppRoute.splashScreen:
      return MaterialPageRoute(builder: (_)=> const SplashScreen());
    case AppRoute.onBoardingScreen:
      return MaterialPageRoute(builder:(context) => const OnboardingScreen());

    case AppRoute.loginScreen:
      return MaterialPageRoute (builder: (context) => const LoginScreen());


    case AppRoute.forgetPasswordScreen  :
      return MaterialPageRoute(builder: (context) =>const ForgotPasswordScreen());

    case AppRoute.checkEmailForgetPasswordScreen  :
      return MaterialPageRoute(builder: (context) => const CheckMailForgotPasswordScreen());

    case AppRoute.createNewPasswordScreen  :
      return MaterialPageRoute(builder: (context) => const CreateNewPassword());

    case AppRoute.successForgetPasswordScreen  :
      return MaterialPageRoute(builder: (context) => const SuccessForgotPasswordScreen());


    case AppRoute.registerScreen:
      return MaterialPageRoute(builder: (context) => const RegisterScreen());

    case AppRoute.registerWorkScreen:
      return MaterialPageRoute(builder: (context) =>const RegisterWorkScreen());

    case AppRoute.locationRegisterScreen:
      return MaterialPageRoute(builder: (context) => const LocationRegisterScreen());

    case AppRoute.successRegisterScreen:
      return MaterialPageRoute(builder: (context) => const SuccessRegisterScreen());


    case AppRoute.layoutScreen:
      return MaterialPageRoute(builder: (_)=>const LayoutScreen());

    case AppRoute.homeScreen:
      return MaterialPageRoute(builder: (context) =>  HomeScreen());
    case AppRoute.notificationScreen:
      return MaterialPageRoute(builder: (context) =>  const NotificationScreen());

    case AppRoute.jobDetailsScreen:
      final args = settings.arguments as JobData;
      return MaterialPageRoute(builder: (context) =>  JobDetails(jobData: args,));

    case AppRoute.applyJobScreen:
      final args = settings.arguments as JobData;
      return MaterialPageRoute(builder: (context) => ApplyJob(jobData: args,));

    case AppRoute.applyJobSuccessfullyScreen:
      return MaterialPageRoute(builder: (context) =>  ApplyJobSuccessfully());

    case AppRoute.pdfScreen:
      final args = settings.arguments as PdfScreenArguments;

      return MaterialPageRoute(builder: (context) =>  PDFScreen(text: args.text, selectedCV: args.file,));

    case AppRoute.imageScreen:
      return MaterialPageRoute(builder: (context) =>  ImageScreen());

    case AppRoute.searchScreen:
      return MaterialPageRoute(builder: (context) =>  SearchScreen());



    case AppRoute.editDetailsScreen:
      return MaterialPageRoute(builder: (context) => EditDetalisScreen());

    case AppRoute.portfolioScreen:
      return MaterialPageRoute(builder: (context) =>  const PortfolioScreen());

    case AppRoute.languageScreen:
      return MaterialPageRoute(builder: (context) =>  const LanguageScreen());

    case AppRoute.notificationsSettingsScreen:
      return MaterialPageRoute(builder: (context) =>  const NotificationsSettingsScreen());

    case AppRoute.privacyAndPolicyScreen:
      return MaterialPageRoute(builder: (context) => const PrivacyAndPolicyScreen());

    case AppRoute.helpCenterScreen:
      return MaterialPageRoute(builder: (context) =>   HelpCenterScreen());

    case AppRoute.termsAndConditionsScreen:
      return MaterialPageRoute(builder: (context) =>   const TermsAndConditionsScreen());

    case AppRoute.loginAndSecurityScreen:
      return MaterialPageRoute(builder: (context) =>  const LoginAndSecurityScreen());

    case AppRoute.emailAddressScreen:
      return MaterialPageRoute(builder: (context) =>  EmailAddressScreen());

    case AppRoute.phoneNumberScreen:
      return MaterialPageRoute(builder: (context) =>   PhoneNumberScreen());

    case AppRoute.changePasswordScreen:
      return MaterialPageRoute(builder: (context) =>   ChangePasswordScreen());

    case AppRoute.twoStepVerification1:
      return MaterialPageRoute(builder: (context) =>   TwoStepVerification1());

    case AppRoute.twoStepVerification2:
      return MaterialPageRoute(builder: (context) =>  TwoStepVerification2());

    case AppRoute.twoStepVerification3:
      return MaterialPageRoute(builder: (context) =>   TwoStepVerification3());

    case AppRoute.twoStepVerification4:
      return MaterialPageRoute(builder: (context) =>  TwoStepVerification4());
    case AppRoute.experienceScreen:
      return MaterialPageRoute(builder: (context) =>   const ExperienceScreen());
    case AppRoute.educationScreen:
      return MaterialPageRoute(builder: (context) =>   const EducationScreen());
    case AppRoute.completeProfileScreen:

      return MaterialPageRoute(builder: (context) =>    const CompleteProfileScreen());


    default:
      return null;

  }

}