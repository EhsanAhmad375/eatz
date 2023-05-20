import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
    required Widget title,
    List<Widget>? actions,
    Widget? leading,
    PreferredSizeWidget? bottom,
  }) : super(
          key: key,
          title: title,
          actions: actions,
          leading: leading,
          bottom: bottom,
          backgroundColor: Colors.blue,
          centerTitle: true,
          elevation: 0,
        );
}
