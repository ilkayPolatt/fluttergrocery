import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/greengrocer_const.dart';

class ContainerBackgroundWhite extends StatelessWidget {
  const ContainerBackgroundWhite({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: GreengrocerConst.color_green100,
          borderRadius: GreengrocerConst.borderRadiusCircular15),
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: widget,
    );
  }
}
