import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:survey_kollect/components/button.dart';
import 'package:survey_kollect/components/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
        ),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/svgs/logo.png',
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        width: MediaQuery.sizeOf(context).width * 0.5,
                      ),
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01),
                      const CustomTextField(label: "Email", obscurity: false),
                      const CustomTextField(label: "Password", obscurity: true),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: CustomButton(
                            onPressed: () =>
                                {Navigator.pushNamed(context, '/home')},
                            text: "Login",
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.065,
                            backgroundColor: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Theme.of(context).colorScheme.primary,
                                  Theme.of(context).colorScheme.secondary,
                                ]),
                            textColor: const Color.fromARGB(255, 112, 193, 220),
                            borderColor:
                                const Color.fromARGB(255, 112, 193, 220),
                            borderWidth: 1),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
    ));
  }
}
