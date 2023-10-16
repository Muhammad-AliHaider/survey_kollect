import 'package:flutter/material.dart';
import 'package:survey_kollect/components/button.dart';
import 'package:flutter/services.dart';

class GroupHomePageOptions extends StatefulWidget {
  const GroupHomePageOptions({Key? key}) : super(key: key);

  @override
  State<GroupHomePageOptions> createState() => _GroupHomePageOptionsState();
}

class _GroupHomePageOptionsState extends State<GroupHomePageOptions> {
  @override
  Widget build(BuildContext context) {
    const list_Tiles = [
      'Fill Blank Form',
      'Edit Blank Form',
      'Send Finalized Form',
      'View Sent Form',
      'Get Blank Form',
      'Delete Saved Form'
    ];

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: list_Tiles.length,
        itemBuilder: (BuildContext ctx, index) {
          return InkWell(
            onTap: () => {
              if (index == 0) {Navigator.pushNamed(context, '/formsSelect')},
              HapticFeedback.lightImpact(),
            },
            splashColor: const Color.fromARGB(255, 112, 193, 220),
            borderRadius: BorderRadius.circular(20),
            child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            // Theme.of(context).colorScheme.secondary,
                            // const Color(0xFFB1E0E7),
                            Theme.of(context).colorScheme.primary,
                            Theme.of(context).colorScheme.secondary,
                          ]),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color.fromARGB(255, 112, 193, 220),
                          width: 3)),
                  child: ListTile(
                      title: Text(
                    list_Tiles[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 112, 193, 220),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
                )),
          );
        });
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   mainAxisSize: MainAxisSize.max,
    //   children: [

    // CustomButton(
    //   onPressed: () => {},
    //   text: "Fill Blank Form",
    //   width: MediaQuery.sizeOf(context).width,
    //   height: MediaQuery.sizeOf(context).height * 0.095,
    //   backgroundColor: LinearGradient(
    //       begin: Alignment.topLeft,
    //       end: Alignment.bottomRight,
    //       colors: [
    //         Theme.of(context).colorScheme.primary,
    //         Theme.of(context).colorScheme.secondary,
    //       ]),
    //   textColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderWidth: 1,
    //   borderRadius: 25,
    // ),
    // CustomButton(
    //   onPressed: () => {},
    //   text: "Edit Blank Form",
    //   width: MediaQuery.sizeOf(context).width,
    //   height: MediaQuery.sizeOf(context).height * 0.095,
    //   backgroundColor: LinearGradient(
    //       begin: Alignment.topLeft,
    //       end: Alignment.bottomRight,
    //       colors: [
    //         Theme.of(context).colorScheme.primary,
    //         Theme.of(context).colorScheme.secondary,
    //       ]),
    //   textColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderWidth: 1,
    //   borderRadius: 25,
    // ),
    // CustomButton(
    //   onPressed: () => {},
    //   text: "Send Finalized Form",
    //   width: MediaQuery.sizeOf(context).width,
    //   height: MediaQuery.sizeOf(context).height * 0.095,
    //   backgroundColor: LinearGradient(
    //       begin: Alignment.topLeft,
    //       end: Alignment.bottomRight,
    //       colors: [
    //         Theme.of(context).colorScheme.primary,
    //         Theme.of(context).colorScheme.secondary,
    //       ]),
    //   textColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderWidth: 1,
    //   borderRadius: 25,
    // ),
    // CustomButton(
    //   onPressed: () => {},
    //   text: "View Sent Form",
    //   width: MediaQuery.sizeOf(context).width,
    //   height: MediaQuery.sizeOf(context).height * 0.095,
    //   backgroundColor: LinearGradient(
    //       begin: Alignment.topLeft,
    //       end: Alignment.bottomRight,
    //       colors: [
    //         Theme.of(context).colorScheme.primary,
    //         Theme.of(context).colorScheme.secondary,
    //       ]),
    //   textColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderWidth: 1,
    //   borderRadius: 25,
    // ),
    // CustomButton(
    //   onPressed: () => {},
    //   text: "Get Blank Form",
    //   width: MediaQuery.sizeOf(context).width,
    //   height: MediaQuery.sizeOf(context).height * 0.095,
    //   backgroundColor: LinearGradient(
    //       begin: Alignment.topLeft,
    //       end: Alignment.bottomRight,
    //       colors: [
    //         Theme.of(context).colorScheme.primary,
    //         Theme.of(context).colorScheme.secondary,
    //       ]),
    //   textColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderWidth: 1,
    //   borderRadius: 25,
    // ),
    // CustomButton(
    //   onPressed: () => {},
    //   text: "Delete Saved Form",
    //   width: MediaQuery.sizeOf(context).width,
    //   height: MediaQuery.sizeOf(context).height * 0.095,
    //   backgroundColor: LinearGradient(
    //       begin: Alignment.topLeft,
    //       end: Alignment.bottomRight,
    //       colors: [
    //         Theme.of(context).colorScheme.primary,
    //         Theme.of(context).colorScheme.secondary,
    //       ]),
    //   textColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderColor: const Color.fromARGB(255, 112, 193, 220),
    //   borderWidth: 1,
    //   borderRadius: 25,
    // ),
    //   ],
    // );
  }
}
