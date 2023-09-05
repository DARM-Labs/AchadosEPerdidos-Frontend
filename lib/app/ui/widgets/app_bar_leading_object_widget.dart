import 'package:flutter/material.dart';

class AppBarLeadingObjectWidget extends StatelessWidget {
  final Function() onTap;

  const AppBarLeadingObjectWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: const Icon(
        Icons.arrow_back_ios_outlined,
      ),
    );
  }
}
