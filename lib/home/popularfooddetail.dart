import 'package:delivery/Utils/Colors.dart';
import 'package:delivery/Utils/dimensions.dart';
import 'package:delivery/Widgets/app_column.dart';
import 'package:delivery/Widgets/app_icon.dart';
import 'package:delivery/Widgets/big_text.dart';
import 'package:delivery/Widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //backgroundimage
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 360,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("image/food2.jpg"))),
            ),
          ),
          //icon widgets
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                  onPressed: () {},
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  onPressed: () {},
                )
              ],
            ),
            //introduction of food
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 340,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    Text: 'Biriani',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BigText(
                    text: "Introduce",
                    color: Colors.black,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising chickens—in comparison to mammals such as cattle or hogs—chicken meat and chicken eggs have become prevalent in numerous cuisines..\nChicken has long been considered a healthy alternative to red meat. And it is indeed low in saturated fat, contains higher amounts of omega-6 fatty acids than other animal meats, and is high in protein and essential vitamins and minerals such as B6, B12, iron, zinc, and copper."),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(
            top: Dimensions.height20,
            bottom: Dimensions.height20,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColor.buttonBackgrundcolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20 * 2),
            topRight: Radius.circular(20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColor.signcolor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(
                    text: "0",
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColor.signcolor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: "\$10 | Add to Cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple.shade200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
