// import 'dart:async';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     Timer(
//       const Duration(seconds: 3),
//       () {
//         Navigator.of(context).pushNamed('/product');
//       },
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 50),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const SizedBox(height: 24),
//               const Text(
//                 'Aladdin Store',
//                 style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),

//               ),
//             ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: const Image(
//                   width: 400,
//                   height: 400,
//                   image: AssetImage('assets/splash.png', )
//                   , // Replace with your image file path
//                 ),
//               ),

//               const Gap(10),
//               const CupertinoActivityIndicator(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:aladdin_store/feature/home/presentation/home_page.dart';
import 'package:aladdin_store/feature/login/presentation/bloc/bloc/authentication_bloc.dart';
import 'package:aladdin_store/feature/login/presentation/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
       
         if (state.authenticationStatus == AuthenticationStatus.unauthenticated) {

          Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (_) => LoginScreen()), (route) => false);
        }else{
          Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (_) => App()), (route) => false);

        }
        // TODO: implement listener
      },
      builder: (context, state) {
         if (state.authenticationStatus == AuthenticationStatus.unknown) {
          context.read<AuthenticationBloc>().add(AuthenticationEvent.getAuthenticationStatus());
        }
        return Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
