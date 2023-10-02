import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton(
      {Key? key,
      required this.onPressed,
      required this.width,
      required this.height,
      required this.iconColor,
      required this.icon,
      required this.backgroundColor,
      required this.borderColor,
      required this.borderWidth,
      required this.iconSize})
      : super(key: key);

  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color iconColor;
  final IconData icon;
  final Gradient backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double iconSize;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: widget.backgroundColor,
          borderRadius: BorderRadius.circular(20.0),
          border:
              Border.all(color: widget.borderColor, width: widget.borderWidth)),
      width: widget.width,
      height: widget.height,
      child: IconButton(
          icon: Icon(
            widget.icon,
            size: widget.iconSize,
            color: widget.iconColor,
          ),
          onPressed: widget.onPressed,
          style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(1, 0, 0, 0))),
    );
  }
}
