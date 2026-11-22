import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';
import 'home.dart';
import 'signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 20),
            //logo
              ClipOval(
                child: Image.asset(
                  'assets/images/Opulent.jpeg',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                context.tr('login.title'),
                style: textTheme.headlineMedium?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                context.tr('login.subtitle'),
                style: TextStyle(color: colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 30),
              AppTextField(
                label: context.tr('login.email'),
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              AppTextField(
                label: context.tr('login.password'),
                icon: Icons.lock,
                isPassword: true,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () {},
                  child: Text(context.tr('login.forgot')),
                ),
              ),
              const SizedBox(height: 10),
              AppButton(
                text: context.tr('login.button'),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(onThemeChanged: onThemeChanged),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(context.tr('login.no_account')),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SignUpPage(onThemeChanged: onThemeChanged),
                        ),
                      );
                    },
                    child: Text(context.tr('login.signup')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}