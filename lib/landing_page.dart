import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: const Text('Landing Page'),
        // ),
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
                                color: Color.fromARGB(255, 209, 152, 243),
                              )),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () => {},
                              child: const Icon(Icons.add),
                            )
                          ],
                        ),
                      ]),
                ),
              ],
            ))));
  }
}
