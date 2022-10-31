import 'package:delivery/Widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  final Color iconcolor;
  const IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      this.color,
      required this.iconcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconcolor,
        ),
        const SizedBox(
          width: 10,
        ),
        SmallText(
          text: text,
          color: color,
        )
      ],
    );
  }
}
