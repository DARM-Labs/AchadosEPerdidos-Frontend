import 'package:flutter/material.dart';

class AppBarTextObjectWidget extends StatelessWidget {
  final String subtitle;
  const AppBarTextObjectWidget({Key? key, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Adicionar objeto", style: TextStyle(fontSize: 18),),
        Text(subtitle, style: const TextStyle(fontSize: 18),),
      ],
    );
  }
}
