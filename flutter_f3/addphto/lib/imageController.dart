// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class ImageController extends GetxController {
  var isProfilepathPicSet = false.obs;
  var ProfilePicPath = "".obs;

  void setImage(String path) {
    ProfilePicPath = path as RxString ;
    isProfilepathPicSet.value = true;
  }
}
