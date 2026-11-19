import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/data/model/items_model.dart';
import 'package:ecommerce_app/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomItemsDiscountWidget extends GetView<HomeControllerImp> {
  const CustomItemsDiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180, // ارتفاع مناسب للبانر
      child: ListView.builder(
        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // تمرير مرن وسلس
        itemBuilder: (context, index) {
          return CustomItemsDiscountModel(
            itemsModel: ItemsModel.fromJson(controller.items[index]),
          );
        },
      ),
    );
  }
}

class CustomItemsDiscountModel extends StatelessWidget {
  final ItemsModel itemsModel;
  const CustomItemsDiscountModel({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // عرض أكبر قليلاً ليكون بانر عريض ومناسب
      margin: const EdgeInsets.only(left: 12), // مسافة بين البانرات
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            // 1. الصورة الخلفية
            Image.network(
              "${AppLink.imagesItems}/${itemsModel.itemsImage}",
              height: 250,
              width: 300,
              fit: BoxFit.fill,
            ),

            // 2. طبقة تظليل (Overlay) لزيادة وضوح النصوص فوق الصورة
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    // ignore: deprecated_member_use
                    Colors.black.withOpacity(0.1),
                    // ignore: deprecated_member_use
                    Colors.black.withOpacity(0.5),
                  ],
                ),
              ),
            ),

            // 3. النصوص أو المحتوى فوق البنر (اختياري)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "82".tr,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    (int.tryParse(itemsModel.itemsDiscount ?? '0') ?? 0) > 0
                        ? "خصم يصل إلى ${itemsModel.itemsDiscount}% على ${itemsModel.itemsNameAr ?? 'المنتج'}"
                        : "عرض مميز على ${itemsModel.itemsNameAr ?? 'المنتج'}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      // ignore: deprecated_member_use
                      color: Colors.white.withOpacity(0.92),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
