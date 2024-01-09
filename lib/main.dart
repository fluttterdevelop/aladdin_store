import 'package:aladdin_store/feature/home/presentation/pages/route/app.dart';
import 'package:aladdin_store/feature/login/presentation/bloc/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoute.router,
      ),
    );
  }
}

// mor_2314  username 
// 83r5^_   password 
 

