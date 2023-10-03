import 'package:flutter/material.dart';
import 'package:survey_kollect/components/button.dart';

class GroupHomePageOptions extends StatefulWidget {
  const GroupHomePageOptions({Key? key}) : super(key: key);

  @override
  State<GroupHomePageOptions> createState() => _GroupHomePageOptionsState();
}

class _GroupHomePageOptionsState extends State<GroupHomePageOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
