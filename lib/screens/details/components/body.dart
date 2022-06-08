import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/models/product.dart';
import 'package:online_shop_app_ui/screens/details/components/add_to_cart.dart';
import 'package:online_shop_app_ui/screens/details/components/color_and_size.dart';
import 'package:online_shop_app_ui/screens/details/components/counter_with_fav_btn.dart';
import 'package:online_shop_app_ui/screens/details/components/description.dart';
import 'package:online_shop_app_ui/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: KDefaultPaddin,
                  right: KDefaultPaddin,
                ),
                //height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    const SizedBox(height: KDefaultPaddin / 2),
                    Description(product: product),
                    const SizedBox(height: KDefaultPaddin / 2),
                    const CounterWithFavBtn(),
                    const SizedBox(height: KDefaultPaddin / 2),
                    AddToCart(product: product)
                  ],
                ),
              ),
              ProductTitleWithImage(product: product)
            ],
          ),
        )
      ]),
    );
  }
}
