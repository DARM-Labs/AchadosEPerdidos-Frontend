import 'package:flutter/material.dart';

class EditFieldWidget extends StatelessWidget {
  final TextEditingController mailController;
  final TextEditingController passController;
  final String mailText;
  final String passText;

  EditFieldWidget({required this.mailController,required this.passController, required this.mailText, required this.passText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Row(
            children: [
              const SizedBox(width: 40,),
              const Icon(Icons.email_outlined),
              const SizedBox(width: 22),
              Expanded(
                child: TextField(
                  controller: mailController,
                  decoration: InputDecoration(
                    hintText: mailText,
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Icon(Icons.edit_outlined),
              const SizedBox(width: 30,)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          
          child: Row(
            children: [
              const SizedBox(width: 40,),
              const Icon(Icons.key),
              const SizedBox(width: 22),
              Expanded(
                child: TextField(
                  controller: passController,
                  decoration: InputDecoration(
                    hintText: passText,
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              const Icon(Icons.edit_outlined),
              const SizedBox(width: 30,)
            ],
          ),
        )
      ],
    );
  }
}
