import 'package:ecommercetask6/service/remote_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var products = [].obs;
  var isLoading = false.obs;

  Future getProducts() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchProduct();
      if (data != null) {
        products.value = data;
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
    getProducts();
  }
}
