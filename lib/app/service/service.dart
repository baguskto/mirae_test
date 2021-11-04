
import 'package:get/get.dart';
import 'package:mirae/app/data/user_model.dart';

class UserService {
 final connect = Get.find<GetConnect>();
  Future<UsersModel> fetchUser({required int item}) async{
    final response = await  connect.get('search/users?q=bagus&per_page=$item',
      decoder: (value) => UsersModel.fromMap(
        value as Map<String, dynamic>,
      ),);
    if (!response.hasError) {
      return response.body!;
    } else {
      switch (response.statusCode) {

        default:
          throw Exception(response.body);
      }
    }
  }

}