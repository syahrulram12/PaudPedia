import 'package:flutter/material.dart';

double getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

bool isKeyboardShow(BuildContext context) {
  return MediaQuery.of(context).viewInsets.bottom != 0;
}