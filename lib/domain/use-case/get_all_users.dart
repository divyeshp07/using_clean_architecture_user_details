import 'package:clean_archi_user_details/domain/entity/user_entity.dart';
import 'package:clean_archi_user_details/domain/repository/user_repository.dart';

class GetAllUserrusecase {
  final UserRepo userRepo;
  GetAllUserrusecase(this.userRepo);
  Future<List<UserEntity>> call() {
    return userRepo.getneededuserinfo();
  }
}
