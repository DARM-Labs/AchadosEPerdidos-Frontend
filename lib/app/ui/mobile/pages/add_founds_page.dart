import 'package:flutter/material.dart';

class AddFoundsPage extends StatelessWidget {
  const AddFoundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Adicionar Objeto Encontrado'),
          ),
          body: const SafeArea(
            child: Text(
              'Adicionar Objeto Encontrado',
            ),
          ),
        );
      },
    );
  }
}
