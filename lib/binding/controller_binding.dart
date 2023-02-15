import 'package:ecommercetask6/controller/product_category_controller.dart';
import 'package:ecommercetask6/controller/product_controller.dart';
import 'package:ecommercetask6/controller/single_product_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ProductController());
    Get.put(ProductCategoryController());
    Get.put(SingleProductController());
  }
}
