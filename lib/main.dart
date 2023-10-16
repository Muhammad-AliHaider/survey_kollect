import 'package:flutter/material.dart';
import 'package:survey_kollect/components/forms_select.dart';
import 'package:survey_kollect/inApplication/home_page.dart';
import 'package:survey_kollect/landing_page.dart';
import 'package:survey_kollect/onBoarding/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Survey Kollect',
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/formsSelect': (context) => const FormsSelect(),
        // '/landing': (context) => const LandingPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF229CC6)),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
