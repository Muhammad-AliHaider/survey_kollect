import 'package:flutter/material.dart';
import 'package:survey_kollect/components/font_manager.dart';

class FontController extends StatefulWidget {
  const FontController({Key? key}) : super(key: key);

  @override
  State<FontController> createState() => _FontControllerState();
}

class _FontControllerState extends State<FontController> {
  FontManager fontManager = FontManager.getInstance();
  var slider1 = 1;
  var slider2 = 1;

  setSliderValue(x) {
    switch (x) {
      case 30:
        return 1;
      case 25:
        return 2;
      case 20:
        return 3;
      case 15:
        return 4;
      case 10:
        return 5;
      case 5:
        return 6;

      default:
        return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    slider1 = setSliderValue(fontManager.getCurrentHeadingSize());
    slider2 = setSliderValue(fontManager.getCurrentSubHeadingSize());

    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Heading Size',
              style: TextStyle(
                  fontSize: fontManager.getCurrentHeadingSize().toDouble(),
                  color: const Color.fromARGB(255, 112, 193, 220))),
          Slider(
            value: slider1.toDouble(),
            divisions: 6,
            max: 6,
            min: 1,
            activeColor: const Color.fromARGB(255, 112, 193, 220),
            thumbColor: const Color.fromARGB(255, 112, 193, 220),
            onChanged: (double value) {
              setState(() {
                slider1 = value.toInt();
              });
              fontManager.setCurrentHeadingSize(value.toInt());
            },
          ),
          Text('Sub Heading Size',
              style: TextStyle(
                  fontSize: fontManager.getCurrentSubHeadingSize().toDouble(),
                  color: const Color.fromARGB(255, 112, 193, 220))),
          Slider(
            value: slider2.toDouble(),
            divisions: 6,
            max: 6,
            min: 1,
            thumbColor: const Color.fromARGB(255, 112, 193, 220),
            activeColor: const Color.fromARGB(255, 112, 193, 220),
            onChanged: (double value) {
              setState(() {
                slider2 = value.toInt();
              });
              fontManager.setCurrentSubHeadingSize(value.toInt());
            },
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 112, 193, 220),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () => {Navigator.pop(context)},
              child: const Text("Save"))
        ],
      ),
    );
  }
}
