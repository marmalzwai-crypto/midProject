import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';
import 'home.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // The back arrow shows up by itself because we used Navigator.push
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr('signup.appbar')),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Text(
                context.tr('signup.title'),
                style: textTheme.headlineMedium?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                context.tr('signup.subtitle'),
                style: TextStyle(color: colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 30),
              AppTextField(
                label: context.tr('signup.name'),
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              AppTextField(
                label: context.tr('signup.email'),
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              AppTextField(
                label: context.tr('signup.password'),
                icon: Icons.lock,
                isPassword: true,
              ),
              const SizedBox(height: 16),
              AppTextField(
                label: context.tr('signup.confirm'),
                icon: Icons.lock_outline,
                isPassword: true,
              ),
              const SizedBox(height: 24),
              AppButton(
                text: context.tr('signup.button'),
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
                  Text(context.tr('signup.have_account')),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(context.tr('signup.login')),
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