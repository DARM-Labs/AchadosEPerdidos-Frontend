import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutPage extends GetView {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('AboutPage')),

    body: SafeArea(
      child: Text('AboutController'))
    );
  }
}