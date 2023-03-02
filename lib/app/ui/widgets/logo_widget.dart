import 'package:flutter/material.dart';

class LogoWidget extends Container {
  LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158,
      child: Image.asset('assets/images/logo_img.png', fit: BoxFit.fitWidth),
    );
  }
}
