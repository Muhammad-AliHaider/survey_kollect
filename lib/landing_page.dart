import 'package:flutter/material.dart';
import 'components/button.dart';
import 'components/custom_icon_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
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
              children: [
                Expanded(
                  child: SafeArea(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                0, MediaQuery.of(context).padding.top, 0, 0),
                            child: const Text('Welcome to Survey Kollect!',
                                style: TextStyle(
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 112, 193, 220),
                                )),
                          ),
                          Container(
                            color: const Color.fromARGB(0, 144, 68, 1),
                            child: Image.asset(
                              'assets/svgs/logo.png',
                              width: MediaQuery.sizeOf(context).width * 0.35,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                        onPressed: () => {
                                              Navigator.pushNamed(
                                                  context, '/login')
                                            },
                                        text: "Login",
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.7,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.065,
                                        backgroundColor: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ]),
                                        textColor: const Color.fromARGB(
                                            255, 112, 193, 220),
                                        borderColor: const Color.fromARGB(
                                            255, 112, 193, 220),
                                        borderWidth: 1),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 8.0,
                                        horizontal: 60,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Divider(
                                                  color: Color.fromARGB(
                                                      255, 112, 193, 220))),
                                          Text(
                                            '    OR Login In With    ',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 112, 193, 220)),
                                          ),
                                          Expanded(
                                            child: Divider(
                                              color: Color.fromARGB(
                                                  255, 112, 193, 220),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomIconButton(
                                            onPressed: () => {},
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.17,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.075,
                                            iconColor: const Color.fromARGB(
                                                255, 112, 193, 220),
                                            icon: Icons.ac_unit_outlined,
                                            backgroundColor: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                ]),
                                            borderColor: const Color.fromARGB(
                                                255, 112, 193, 220),
                                            borderWidth: 1,
                                            iconSize: 25),
                                        CustomIconButton(
                                            onPressed: () => {},
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.17,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.075,
                                            iconColor: const Color.fromARGB(
                                                255, 112, 193, 220),
                                            icon: Icons.ac_unit_outlined,
                                            backgroundColor: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                ]),
                                            borderColor: const Color.fromARGB(
                                                255, 112, 193, 220),
                                            borderWidth: 1,
                                            iconSize: 25),
                                        CustomIconButton(
                                            onPressed: () => {},
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.17,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.075,
                                            iconColor: const Color.fromARGB(
                                                255, 112, 193, 220),
                                            icon: Icons.ac_unit_outlined,
                                            backgroundColor: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                ]),
                                            borderColor: const Color.fromARGB(
                                                255, 112, 193, 220),
                                            borderWidth: 1,
                                            iconSize: 25)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.05,
                          )
                        ]),
                  ),
                ),
              ],
            ))));
  }
}
