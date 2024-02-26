import 'package:clean_archi_user_details/data/data-source/user_data_source.dart';
import 'package:clean_archi_user_details/data/data-source/user_data_source_impl.dart';
import 'package:clean_archi_user_details/domain/entity/user_entity.dart';
import 'package:clean_archi_user_details/domain/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_repository_impl.g.dart';

class UserRepositoryImpl implements UserRepo {
  final UserDataSource userDataSource;
  UserRepositoryImpl(this.userDataSource);
  @override
  Future<List<UserEntity>> getneededuserinfo() async {
    final data = await userDataSource.getAllUsers();
    return data.users!
        .map((e) => UserEntity(
            id: e.id!,
            firstName: e.firstName!,
            age: e.age!,
            gender: e.gender!,
            email: e.email!,
            phone: e.phone!))
        .toList();
  }
}

@riverpod
UserRepo userRepo(UserRepoRef ref) {
  return UserRepositoryImpl(ref.watch(userDataSourceProvider));
}
