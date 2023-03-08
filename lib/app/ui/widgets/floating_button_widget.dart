import 'package:flutter/material.dart';

class FloatingButtonWidget extends FloatingActionButton {
  FloatingButtonWidget({
    super.key,
    // required this.onpressed,
    required super.onPressed,
  });
  void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onpressed,
    );
  }
}
