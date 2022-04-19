import 'package:flutter/material.dart';

class CustomTransformText {
  showValidation(String msg, BuildContext context) {
    final snackBar = SnackBar(
      content: Text(msg),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  List<String> key1 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];
  List<String> key2 = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"];
  List<String> key3 = ["a", "s", "d", "f", "g", "h", "j", "k", "l", ";"];
  List<String> key4 = ["z", "x", "c", "v", "b", "n", "m", ",", ".", "/"];

  List<String> getAllKey() {
    List<String> allKey = [...key1, ...key2, ...key3, ...key4];

    return allKey;
  }

  String horizontalFlip(String text, String type, BuildContext context) {
    showValidation('Kamu memilih transform horizontal flip', context);

    String output = '';

    bool isExist = false;

    for (var i = 0; i < key1.length; i++) {
      if (text == key1[i]) {
        output = key1[(key1.length - 1) - i];

        isExist = true;
      }
    }

    if (isExist == false) {
      for (var i = 0; i < key2.length; i++) {
        if (text == key2[i]) {
          output = key2[(key1.length - 1) - i];

          isExist = true;
        }
      }
    }

    if (isExist == false) {
      for (var i = 0; i < key3.length; i++) {
        if (text == key3[i]) {
          output = key3[(key1.length - 1) - i];

          isExist = true;
        }
      }
    }

    if (isExist == false) {
      for (var i = 0; i < key4.length; i++) {
        if (text == key4[i]) {
          output = key4[(key1.length - 1) - i];

          isExist = true;
        }
      }
    }

    return output;
  }

  String verticalFlip(String text, String type, BuildContext context) {
    showValidation('Kamu memilih transform vertical flip', context);

    String output = '';

    bool isExist = false;

    if (isExist == false) {
      for (var i = 0; i < key1.length; i++) {
        if (text == key1[i]) {
          output = key4[i];
          isExist = true;
        }
      }
    }

    if (isExist == false) {
      for (var i = 0; i < key2.length; i++) {
        if (text == key2[i]) {
          output = key3[i];
          isExist = true;
        }
      }
    }

    if (isExist == false) {
      for (var i = 0; i < key3.length; i++) {
        if (text == key3[i]) {
          output = key4[i];
          isExist = true;
        }
      }
    }

    if (isExist == false) {
      for (var i = 0; i < key4.length; i++) {
        if (text == key4[i]) {
          output = key1[i];
          isExist = true;
        }
      }
    }
    return output;
  }

  String shift(String text, String type, BuildContext context) {
    showValidation('Kamu memilih transform shift', context);

    String output = '';

    List<String> allKey = getAllKey();
    int typeInt = int.parse(type);
    int indextText;

    for (var i = 0; i < text.length; i++) {
      indextText = i;
      if (text[i] == '-') {
        output = output + '-';
      }
      for (var i = 0; i < allKey.length; i++) {
        if (text[indextText] == allKey[i]) {
          output =
              output + allKey[(i + (typeInt % allKey.length)) % allKey.length];
        }
      }
    }

    return output;
  }
}
