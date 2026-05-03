import 'package:flutter/material.dart';
import 'package:kids_trakr/feature/login/widgets/another_login.dart';
import 'package:kids_trakr/feature/login/widgets/form_login.dart';
import 'package:kids_trakr/feature/login/widgets/signup_from_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 48.0),
              Text(
                'Login to your Account',
                style: Theme.of(context).textTheme.displayLarge,
                softWrap: true,
              ),
              const SizedBox(height: 12.0),
              Text(
                'Log in to your account using your cooperative membership credentials.',
                style: Theme.of(context).textTheme.bodyLarge,
                softWrap: true,
              ),
              const SizedBox(height: 20.0),
              // Form Login
              const FormLogin(),
              const SizedBox(height: 20.0),
              // Another Login
              const AnotherLogin(),
              const SizedBox(height: 16.0),
              const SignupFromLogin(),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
