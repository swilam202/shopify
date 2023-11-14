import 'package:flutter/material.dart';

void textEditingControllerEraser(List<TextEditingController> controllers) {
  for (int i = 0; i < controllers.length; i++) {
    controllers[i].clear();
  }
}
