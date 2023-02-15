import 'package:ecommercetask6/service/remote_service.dart';
import 'package:get/get.dart';

class ProductCategoryController extends GetxController {
  var category = [].obs;
  var isLoading = false.obs;

  Future getCategoryController() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchProductCategory();
      if (data != null) {
        category.value = data;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //getProductsCategory();
    getCategoryController();
  }
}
