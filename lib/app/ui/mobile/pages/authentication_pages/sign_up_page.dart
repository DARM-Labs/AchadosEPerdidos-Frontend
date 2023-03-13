import 'package:achadoseperdidosifce/app/ui/widgets/dropdown_button_widget.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../../controller/auth_controller/sign_up_controller.dart';
import '../../../../utils/validators.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/textField_widget.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Criar conta')),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: controller.formGlobalKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(20)),
                  TextFieldWidget(
                    label: 'Digite seu nome',
                    hintText: 'seu nome completo',
                    onChanged: (value) => controller.user.name,
                    validator: (value) => Validators.combine([
                      () => Validators.isNotEmpty(value),
                      () => Validators.isUserName(value)
                    ]),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  TextFieldWidget(
                    label: 'Digite seu e-mail',
                    hintText: 'E-mail',
                    onChanged: (value) => controller.user.email,
                    validator: (value) => Validators.combine([
                      () => Validators.isNotEmpty(value),
                      () => Validators.isEmail(value)
                    ]),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  TextFieldWidget(
                    label: 'Whatsapp',
                    hintText: '(00) 00000-0000',
                    onChanged: (value) => controller.user.email,
                    validator: (value) => Validators.combine([
                      () => Validators.isNotEmpty(value),
                      () => Validators.isTelephone(value)
                    ]),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      TelefoneInputFormatter(),
                    ],
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  TextFieldWidget(
                    label: 'Digite sua senha',
                    hintText: '∗∗∗∗∗∗∗∗',
                    security: true,
                    onChanged: (value) => controller.user.senha,
                    validator: (value) => Validators.combine([
                      () => Validators.isNotEmpty(value),
                      () => Validators.greaterThanEightEightCaracters(value)
                    ]),
                    textInputAction: TextInputAction.next,
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  TextFieldWidget(
                    label: 'Confirme sua senha',
                    hintText: '∗∗∗∗∗∗∗∗',
                    security: true,
                    onChanged: (value) => controller.user.senha,
                    validator: (value) => Validators.combine([
                      () => Validators.isNotEmpty(value),
                      () => Validators.greaterThanEightEightCaracters(value)
                    ]),
                    textInputAction: TextInputAction.next,
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  DropDownButtonWidget(
                    label: 'Você é o que na instituição',
                    items: <String>[
                      'Discente',
                      'Docente',
                      'TAFs (Comunidade externa)'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    validator: (value) => Validators.combine([
                      () => Validators.isNotEmpty(value),
                    ]),
                    onChanged: (value) => controller.office(value),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Obx(
                    () => controller.office.value == 'Discente'
                        ? TextFieldWidget(
                            label: 'Curso',
                            hintText: 'qual seu curso?',
                            onChanged: (value) => controller.user.curso,
                            validator: (value) => Validators.combine([
                              () => Validators.isNotEmpty(value),
                            ]),
                            textInputAction: TextInputAction.done,
                          )
                        : Container(),
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  ButtonWidget(
                      title: 'finalizar',
                      onPressed: () => controller.saveButton(() {})),
                  const Padding(padding: EdgeInsets.all(20)),
                ],
              ),
            ),
          ),
        )));
  }
}
