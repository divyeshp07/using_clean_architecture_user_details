import 'package:clean_archi_user_details/data/repository/user_repository_impl.dart';
import 'package:clean_archi_user_details/domain/entity/user_entity.dart';
import 'package:clean_archi_user_details/domain/use-case/get_all_users.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_provider.g.dart';

@riverpod
Future<List<UserEntity>> getUser(GetUserRef ref) {
  return GetAllUserrusecase(ref.read(userRepoProvider))();
}
