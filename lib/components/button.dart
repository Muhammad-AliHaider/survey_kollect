import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.width,
      required this.height,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.borderWidth})
      : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final double width;
  final double height;
  final Color textColor;
  final Gradient backgroundColor;
  final Color borderColor;
  final double borderWidth;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: widget.backgroundColor,
          borderRadius: BorderRadius.circular(40.0),
          border:
              Border.all(color: widget.borderColor, width: widget.borderWidth)),
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: widget.textColor,
            backgroundColor: const Color.fromARGB(0, 255, 255, 255)),
        onPressed: widget.onPressed,
        child: Text(widget.text),
      ),
    );
  }
}
