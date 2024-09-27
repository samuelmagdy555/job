// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sizer/sizer.dart';
// import 'core/bloc_observer.dart';
// import 'core/database/local_database/cache_helper.dart';
// import 'core/database/remoteDatabase/DioHelper.dart';
// import 'core/router/app_router.dart';
// import 'features/apply_job/view_model/job_cubit.dart';
// import 'features/create_account/view_model/register_cubit.dart';
// import 'features/forgot_password/view_model/forget_password_cubit.dart';
// import 'features/home/view_model/home_cubit.dart';
// import 'features/home_layout/view_model/layout_cubit.dart';
// import 'features/login/view_model/login_cubit.dart';
// import 'features/onboarding/view_model/onboarding_cubit.dart';
// import 'features/profile/view_model/profile_cubit.dart';
// import 'features/saved_job/view_model/favourite_cubit.dart';
// import 'features/search/view_model/search_cubit.dart';



// void main() {
//   WidgetsFlutterBinding.ensureInitialized();

//   Bloc.observer = MyBlocObserver();
//   CashHelper.init();
//   DioHelper.init();
//   runApp(
//     // DevicePreview(
//     //   //enabled: !kReleaseMode,
//     //     tools: const [
//     //       ...DevicePreview.defaultTools
//     //     ],
//     //     builder: (BuildContext context) => const MyApp() ,
//     //     ),

//      const MyApp()
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (BuildContext context, Orientation orientation, deviceType) {
//         return MultiBlocProvider(
//           providers: [
//             BlocProvider<LayoutCubit>(
//               create: (context) => LayoutCubit(),
//             ),
//             BlocProvider<LoginCubit>(
//               create: (context) => LoginCubit(),
//             ),
//             BlocProvider<ForgetPasswordCubit>(
//               create: (context) => ForgetPasswordCubit(),
//             ),
//             BlocProvider<RegisterCubit>(
//               create: (context) => RegisterCubit(),
//             ),
//             BlocProvider(
//               create: (context) => HomeCubit()
//                 ..getAllRecentJobs()..getAllSuggestJobs()..getFavouriteJobs(),
//             ),
//             BlocProvider(
//               create: (context) => JobCubit(),
//             ),
//             BlocProvider(
//               create: (context) => FavouriteCubit(),
//             ),
//             BlocProvider(
//               create: (context) => SearchCubit(),
//             ),
//             BlocProvider(
//               create: (context) => ProfileCubit()
//                 ..getProfileDetailsAndPortfolios()..getProfileNameAndEmail()

//             ),
//             BlocProvider(
//               create: (context) => OnboardingCubit(),
//             ),


//           ],
//           child: MaterialApp(
//             debugShowCheckedModeBanner: false,
//             theme: ThemeData(
//               fontFamily: 'SFProDisplay',
//               colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//               useMaterial3: true,
//             ),
//             onGenerateRoute: onGenerateRouter,

//           ),
//         );
//       },

//     );
//   }
// }
GestureDetector(
  onTap: () async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // You can then retrieve the GoogleSignInAuthentication object like this
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        
        // Create a new credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        // Once signed in, return the UserCredential
        await FirebaseAuth.instance.signInWithCredential(credential);

        // Optionally push to another screen or handle the logged in user.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainLayout()),
        );
      }
    } catch (error) {
      print('Error in Google sign-in: $error');
    }
  },
  child: // your UI component here
)



