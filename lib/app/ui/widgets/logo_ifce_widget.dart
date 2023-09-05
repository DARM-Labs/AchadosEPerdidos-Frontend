import 'package:flutter/material.dart';

class LogoIfceWidget extends Container {
  LogoIfceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 67,
      child: Image.asset('assets/images/ifce_img.png', fit: BoxFit.fitWidth),
    );
  }
}
