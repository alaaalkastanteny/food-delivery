import 'package:delivery/Utils/dimensions.dart';
import 'package:delivery/Widgets/big_text.dart';
import 'package:delivery/Widgets/small_text.dart';
import 'package:delivery/home/food_page_body.dart';
import 'package:flutter/material.dart';

class MainFoodpage extends StatefulWidget {
  const MainFoodpage({Key? key}) : super(key: key);

  @override
  State<MainFoodpage> createState() => _MainFoodpageState();
}

class _MainFoodpageState extends State<MainFoodpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Container(
                margin: EdgeInsets.only(
                    top: 10,
                    bottom: 15,
                    right: Dimensions.width15,
                    left: Dimensions.width15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(
                          text: "Syria",
                          color: Colors.purple.shade900,
                        ),
                        Row(
                          children: [
                            SmallText(
                              text: "Damascus",
                              color: Colors.purple.shade600,
                            ),
                            const Icon(Icons.arrow_drop_down_rounded),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.purple.shade900,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: FoodPageBody(),
            ))
          ],
        ),
      ),
    );
  }
}
