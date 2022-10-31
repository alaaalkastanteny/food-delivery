import 'package:delivery/Utils/Colors.dart';
import 'package:delivery/Utils/dimensions.dart';
import 'package:delivery/Widgets/app_icon.dart';
import 'package:delivery/Widgets/big_text.dart';
import 'package:delivery/Widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommendFoodDetail extends StatelessWidget {
  const RecommendFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                  onPressed: () {},
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  onPressed: () {},
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  text: "Chinese Side",
                  size: 26,
                  color: Colors.black,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: AppColor.maintcolor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "image/food2.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          "Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising chickens—in comparison to mammals such as cattle or hogs—chicken meat and chicken eggs have become prevalent in numerous cuisines..\nChicken has long been considered a healthy alternative to red meat. And it is indeed low in saturated fat, contains higher amounts of omega-6 fatty acids than other animal meats, and is high in protein and essential vitamins and minerals such as B6, B12, iron, zinc, and copper Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising chickens—in comparison to mammals such as cattle or hogs—chicken meat and chicken eggs have become prevalent in numerous cuisines..\nChicken has long been considered a healthy alternative to red meat. And it is indeed low in saturated fat, contains higher amounts of omega-6 fatty acids than other animal meats, and is high in protein and essential vitamins and minerals such as B6, B12, iron, zinc, and copper Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising chickens—in comparison to mammals such as cattle or hogs—chicken meat and chicken eggs have become prevalent in numerous cuisines..\nChicken has long been considered a healthy alternative to red meat. And it is indeed low in saturated fat, contains higher amounts of omega-6 fatty acids than other animal meats, and is high in protein and essential vitamins and minerals such as B6, B12, iron, zinc, and copper Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising chickens—in comparison to mammals such as cattle or hogs—chicken meat and chicken eggs have become prevalent in numerous cuisines..\nChicken has long been considered a healthy alternative to red meat. And it is indeed low in saturated fat, contains higher amounts of omega-6 fatty acids than other animal meats, and is high in protein and essential vitamins and minerals such as B6, B12, iron, zinc, and copper."),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  onPressed: () {},
                  iconColor: Colors.white,
                  backgroundColor: AppColor.maintcolor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: Colors.black,
                ),
                AppIcon(
                  onPressed: () {},
                  iconColor: Colors.white,
                  backgroundColor: AppColor.maintcolor,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
          Container(
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
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColor.maintcolor,
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
                    color: AppColor.maintcolor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
