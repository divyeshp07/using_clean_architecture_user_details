import 'package:clean_archi_user_details/data/model/user_model/user_model.dart';

abstract class UserDataSource {
  Future<UserModel> getAllUsers();
}
