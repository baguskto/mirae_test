import 'package:mirae/app/data/user_model.dart';
import 'package:mirae/app/service/service.dart';

class UserRepository {
  final UserService _userService;

  UserRepository({required UserService userService})
      : _userService = userService;

  Future<UsersModel> getUserData({required int item}) async {
    try {
      final response = await _userService.fetchUser(item: item);
      return response;
    } catch (err) {
      rethrow;
    }
  }
}
