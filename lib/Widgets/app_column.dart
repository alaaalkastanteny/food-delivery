import 'package:delivery/Utils/dimensions.dart';
import 'package:delivery/Widgets/big_text.dart';
import 'package:delivery/Widgets/icon_and_text_widget.dart';
import 'package:delivery/Widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String Text;
  AppColumn({Key? key, required this.Text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: Text,
          color: Colors.black,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: Colors.lightBlue,
                  size: 15,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(
              text: "4,5",
              color: Colors.grey,
            ),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallText(
              text: "1287",
              color: Colors.grey,
            ),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallText(
              text: "Comments",
              color: Colors.grey,
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconcolor: Colors.amber,
              color: Colors.grey,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconcolor: Colors.lightBlueAccent,
              color: Colors.grey,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32min",
              iconcolor: Colors.redAccent,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
