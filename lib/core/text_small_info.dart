import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/greengrocer_const.dart';

class TextSmallInfo extends StatelessWidget {
  const TextSmallInfo({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text ?? GreengrocerConst.info_text,
      style: Theme.of(context)
          .textTheme
          .labelLarge
          ?.copyWith(color: GreengrocerConst.color_grey, fontSize: 17),
    );
  }
}
