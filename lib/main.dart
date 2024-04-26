import 'package:flutter/material.dart';
import 'package:vlog_app/core/theme/app_theme.dart';
import 'package:vlog_app/feature/auth/presentation/pages/log_in.dart';
import 'package:vlog_app/feature/auth/presentation/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vlog App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkThemeMode,
      home: const LogInPage(),
    );
  }
}

