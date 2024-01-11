// import 'package:aladdin_store/feature/login/presentation/bloc/bloc/authentication_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gap/gap.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final username = TextEditingController();
//   final pasword = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Login'),
//         ),
//         body: ListView(
//           children: [
//             TextField(
//               controller: username,
//               textInputAction: TextInputAction.next,
//               decoration: const InputDecoration(labelText: 'username'),
//             ),
//             TextField(
//               controller: pasword,
//               textInputAction: TextInputAction.done,
//               decoration: const InputDecoration(labelText: 'pasword'),
//               onEditingComplete: () {
//                 context.read<AuthenticationBloc>().add(
//                     AuthenticationEvent.login(
//                         username: username.text,
//                         password: pasword.text,
//                         onSuccess: () {},
//                         onFailure: (String value) {}));
//               },
//             ),
//             const Gap(20),
//             MaterialButton(
//               color: Colors.green,
//               onPressed: () {
//                 context.read<AuthenticationBloc>().add(
//                     AuthenticationEvent.login(
//                         username: username.text,
//                         password: pasword.text,
//                         onSuccess: () {},
//                         onFailure: (String value) {}));
//               },
//               child: const Text('login'),
//             )
//           ],
//         ));
//   }

//   @override
//   void dispose() {
//     username.dispose();
//     pasword.dispose();
//     super.dispose();
//   }
// }




import 'package:aladdin_store/feature/home/presentation/home_page.dart';
import 'package:aladdin_store/feature/login/presentation/bloc/bloc/authentication_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});



  

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: userNameController,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(labelText: 'Username'),
          ),
          TextField(
            controller: passwordController,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(labelText: 'Password'),
            onEditingComplete: () {
              context.read<AuthenticationBloc>().add(AuthenticationEvent.login(
                    username: userNameController.text,
                    password: passwordController.text,
                    onSuccess: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          CupertinoPageRoute(builder: (_) => const App()),
                          (route) => false);
                    },
                    onFailure: (errorMessage) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(errorMessage)));
                    },
                  ));
            },
          ),
          const SizedBox(height: 60),
          MaterialButton(
            color: Colors.green,
            onPressed: () {
              context.read<AuthenticationBloc>().add(AuthenticationEvent.login(
                    username: userNameController.text,
                    password: passwordController.text,
                    onSuccess: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          CupertinoPageRoute(builder: (_) => const App()),
                          (route) => false);
                    },
                    onFailure: (errorMessage) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(errorMessage)));
                    },
                  ));
            },
            child: const Text('Login'),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
