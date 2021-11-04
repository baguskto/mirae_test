import 'package:get/get.dart';
import 'package:mirae/app/data/repository/user_repository.dart';
import 'package:mirae/app/data/user_model.dart';
import 'package:mirae/app/service/service.dart';

class HomeController extends GetxController with StateMixin<UsersModel> {
  late UserRepository repository;
  final userService = Get.put(UserService());
  RxInt initialItem = 10.obs;

  @override
  void onInit() {
    repository = UserRepository(userService: userService);
    super.onInit();
  }

  @override
  void onReady() {
    showUser(item: initialItem.value);
    super.onReady();
  }

  @override
  void onClose() {}

  void showUser({required int item}) {
    change(null, status: RxStatus.loading());
    try {
      repository.getUserData(item: item).then((value) {
        change(value, status: RxStatus.success());
      });
    } catch (e) {
      change(null, status: RxStatus.error());
      Get.snackbar('Error', '$e');
    }
  }
}
