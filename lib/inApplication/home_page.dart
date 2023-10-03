import 'package:flutter/material.dart';
import 'package:survey_kollect/components/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ]),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.secondary,
                      const Color(0xFFB1E0E7),
                    ]),
              ),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.25,
                          height: MediaQuery.sizeOf(context).height * 0.15,
                          child: const CircleAvatar(
                            foregroundColor: Color.fromARGB(255, 28, 14, 13),
                            backgroundColor: Color.fromARGB(255, 54, 187, 244),
                            radius: 20,
                            child: Text(
                              "A",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            "Muhammad Ali Haider",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            maxLines: 10,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            "Designation",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            maxLines: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomButton(
                        onPressed: () => {},
                        text: "Fill Blank Form",
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.095,
                        backgroundColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.secondary,
                            ]),
                        textColor: const Color.fromARGB(255, 112, 193, 220),
                        borderColor: const Color.fromARGB(255, 112, 193, 220),
                        borderWidth: 1,
                        borderRadius: 25,
                      ),
                      CustomButton(
                        onPressed: () => {},
                        text: "Edit Blank Form",
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.095,
                        backgroundColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.secondary,
                            ]),
                        textColor: const Color.fromARGB(255, 112, 193, 220),
                        borderColor: const Color.fromARGB(255, 112, 193, 220),
                        borderWidth: 1,
                        borderRadius: 25,
                      ),
                      CustomButton(
                        onPressed: () => {},
                        text: "Send Finalized Form",
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.095,
                        backgroundColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.secondary,
                            ]),
                        textColor: const Color.fromARGB(255, 112, 193, 220),
                        borderColor: const Color.fromARGB(255, 112, 193, 220),
                        borderWidth: 1,
                        borderRadius: 25,
                      ),
                      CustomButton(
                        onPressed: () => {},
                        text: "View Sent Form",
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.095,
                        backgroundColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.secondary,
                            ]),
                        textColor: const Color.fromARGB(255, 112, 193, 220),
                        borderColor: const Color.fromARGB(255, 112, 193, 220),
                        borderWidth: 1,
                        borderRadius: 25,
                      ),
                      CustomButton(
                        onPressed: () => {},
                        text: "Get Blank Form",
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.095,
                        backgroundColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.secondary,
                            ]),
                        textColor: const Color.fromARGB(255, 112, 193, 220),
                        borderColor: const Color.fromARGB(255, 112, 193, 220),
                        borderWidth: 1,
                        borderRadius: 25,
                      ),
                      CustomButton(
                        onPressed: () => {},
                        text: "Delete Saved Form",
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.095,
                        backgroundColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.secondary,
                            ]),
                        textColor: const Color.fromARGB(255, 112, 193, 220),
                        borderColor: const Color.fromARGB(255, 112, 193, 220),
                        borderWidth: 1,
                        borderRadius: 25,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ],
    ));
  }
}
