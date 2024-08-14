import 'package:airport_project/app/ui/global_widgets/button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/base_state.dart';
import '../../../../core/init/theme/color_manager.dart';
import '../../../controllers/airportshoppingstores_controller.dart';
import 'model/airport_shopping_stores_model.dart';

class AirportShoppingStoresDetailPage
    extends GetView<AirportShoppingStoresController> {
  final String brandName;
  final List<AirportProduct> products;
  const AirportShoppingStoresDetailPage(
      {super.key, required this.brandName, required this.products});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AirportShoppingStoresController>(
      builder: (c) {
        return Scaffold(
          backgroundColor: ColorManager.instance.white,
          appBar: AppBar(
            title: Text(
              brandName,
              style: TextStyle(
                fontFamily: "Medium",
                color: ColorManager.instance.black,
                fontSize: Utility.dynamicTextSize(21),
              ),
            ),
            centerTitle: true,
            backgroundColor: ColorManager.instance.white,
          ),
          body: Padding(
            padding: EdgeInsets.all(Utility.dynamicWidthPixel(16)),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200, // Adjust as needed
                childAspectRatio: 2 / 3, // Adjust as needed
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: CachedNetworkImage(
                        imageUrl: products[index].image,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: Utility.dynamicWidthPixel(10)),
                      child: Column(
                        children: [
                          Text(
                            products[index].name,
                            style: TextStyle(
                              fontFamily: "Medium",
                              color: ColorManager.instance.black,
                              fontSize: Utility.dynamicTextSize(16),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "${products[index].price} TL",
                            style: TextStyle(
                              fontFamily: "Medium",
                              color: ColorManager.instance.black,
                              fontSize: Utility.dynamicTextSize(16),
                            ),
                          )
                        ],
                      ),
                    ),
                    Button(
                      color: ColorManager.instance.black,
                      onTap: () {
                        c.addToCart(products[index]);
                        Get.closeAllSnackbars();
                        Get.snackbar("Başarılı", "Ürün Sepete Eklendi");
                      },
                      title: "SEPETE EKLE",
                      textColor: ColorManager.instance.white,
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
