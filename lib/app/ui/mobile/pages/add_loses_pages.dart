import 'package:flutter/material.dart';

class AddLosesPage extends StatelessWidget {
  const AddLosesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Adicionar Objeto Perdido'),
          ),
          body: const SafeArea(
            child: Text(
              'Adicionar Objeto Perdido',
            ),
          ),
        );
      },
    );
  }
}
