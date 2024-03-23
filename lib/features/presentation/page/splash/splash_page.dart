import 'package:flutter/material.dart';
import 'package:test_bus/features/presentation/page/auth/auth_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => const AuthorizationScreen()));
    });

    return const Scaffold(
      body: Center(child: Text('Загрузка...')),
    );
  }
}
