import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/lang_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(title: Text(context.tr('settings.title'))),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(context.tr('settings.language')),
            trailing: const LanguageButton(),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode),
            title: Text(context.tr('settings.dark_mode')),
            value: isDark,
            onChanged: onThemeChanged,
          ),
        ],
      ),
    );
  }
}