import 'package:clean_archi_user_details/domain/entity/user_entity.dart';

abstract class UserRepo {
  Future<List<UserEntity>> getneededuserinfo();
}
