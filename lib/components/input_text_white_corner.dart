import 'package:flutter/material.dart';
import 'package:paudpedia_kemendikbud/utils/primitif_extention.dart';

class InputTextWhiteCorner extends StatefulWidget {
  final TextEditingController? eventController;
  final String? hintText;
  final TextStyle hintStyle;
  final bool isSecureInput;
  final Function(String)? onChanged;
  final Color color;

  const InputTextWhiteCorner({
    Key? key,
    this.eventController,
    this.hintText,
    this.onChanged,
    this.hintStyle = const TextStyle(color: Colors.black),
    this.isSecureInput = false,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  _InputTextWhiteCornerState createState() => _InputTextWhiteCornerState();
}

class _InputTextWhiteCornerState extends State<InputTextWhiteCorner> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.eventController,
      textAlign: TextAlign.center,
      obscureText: widget.isSecureInput,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          hintStyle: widget.hintStyle,
          hintText: widget.hintText.orEmpty()),
    );
  }
}
