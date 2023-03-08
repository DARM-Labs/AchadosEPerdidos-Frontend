import 'package:flutter/material.dart';

class Variavel {
  static alturaDisponivel(BuildContext context) {
    final alturaMedia = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        AppBar().preferredSize.height);

    return alturaMedia;
  }
}
