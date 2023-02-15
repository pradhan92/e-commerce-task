import 'package:ecommercetask6/model/single_product_model.dart';
import 'package:ecommercetask6/service/remote_service.dart';
import 'package:get/get.dart';

class SingleProductController extends GetxController {
  var product = SingleProductModel().obs;
  var isLoading = false.obs;

  Future getProduct(int id) async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchSingleProduct(id);
      if (data != null) {
        product.value = data;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    } finally {
      isLoading(false);
    }
  }
}
