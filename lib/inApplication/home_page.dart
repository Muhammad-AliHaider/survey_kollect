import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:survey_kollect/components/font_controller.dart';
import 'package:survey_kollect/components/forms_select.dart';
import 'package:survey_kollect/components/group_home_page_options.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
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
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                    ]),
              ),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          onPressed: () => {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                constraints: BoxConstraints(
                                  maxHeight:
                                      MediaQuery.of(context).size.height * 0.5,
                                ),
                                context: context,
                                builder: (context) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        // color:
                                        //     Color.fromARGB(255, 56, 139, 175),
                                        gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              // Color.fromARGB(255, 54, 187, 244),
                                              // Color.fromARGB(255, 28, 14, 13),
                                              Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ]),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Add Project",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Divider(
                                                  color: Colors.white,
                                                  thickness: 2,
                                                  indent: 10,
                                                  endIndent: 10,
                                                  height: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                          ListView(
                                            shrinkWrap: true,
                                            children: [
                                              Card(
                                                child: ListTile(
                                                  title: Text(
                                                    "Project 1",
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              112,
                                                              193,
                                                              220),
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                  trailing: IconButton(
                                                    onPressed: () => {},
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              112,
                                                              193,
                                                              220),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Card(
                                                child: ListTile(
                                                  title: Text(
                                                    "Project 1",
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              112,
                                                              193,
                                                              220),
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                  trailing: IconButton(
                                                    onPressed: () => {},
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              112,
                                                              193,
                                                              220),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Card(
                                                shadowColor: Colors.black,
                                                child: ListTile(
                                                  title: Text(
                                                    "Project 1",
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              112,
                                                              193,
                                                              220),
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                  trailing: IconButton(
                                                    onPressed: () => {},
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              112,
                                                              193,
                                                              220),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Card(
                                                child: ListTile(
                                                  title: Text(
                                                    "Project 1",
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              112,
                                                              193,
                                                              220),
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                  trailing: IconButton(
                                                    onPressed: () => {},
                                                    icon: Icon(
                                                      Icons.delete,
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              112,
                                                              193,
                                                              220),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ElevatedButton.icon(
                                                onPressed: () => {},
                                                style: ElevatedButton.styleFrom(
                                                  foregroundColor:
                                                      const Color.fromARGB(
                                                          255, 112, 193, 220),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                label:
                                                    const Text("Add Project"),
                                                icon:
                                                    const Icon(Icons.qr_code_2),
                                              ),
                                              ElevatedButton.icon(
                                                onPressed: () => {
                                                  showModalBottomSheet(
                                                      context: context,
                                                      builder: (context) =>
                                                          const FontController())
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  foregroundColor:
                                                      const Color.fromARGB(
                                                          255, 112, 193, 220),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                label: const Text("Font Size"),
                                                icon: const Icon(
                                                    Icons.font_download),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                })
                          },
                          icon: Icon(Icons.settings),
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.25,
                          height: MediaQuery.sizeOf(context).height * 0.12,
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
            const Expanded(
              child: Padding(
                  padding: EdgeInsets.all(8.0), child: GroupHomePageOptions()),
            )
          ],
        ),
      ],
    ));
  }
}
