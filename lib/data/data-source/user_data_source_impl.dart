import 'package:clean_archi_user_details/data/data-source/user_data_source.dart';
import 'package:clean_archi_user_details/data/model/user_model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_data_source_impl.g.dart';

class UserDataSourceImpl implements UserDataSource {
  final Dio dio = Dio();
  @override
  Future<UserModel> getAllUsers() async {
    try {
      Response response = await dio.get('https://dummyjson.com/users');
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }
      throw 'error${response.statusCode}';
    } catch (e) {
      throw 'unkonowm';
    }
  }
}

@riverpod
UserDataSource userDataSource(UserDataSourceRef ref) {
  return UserDataSourceImpl();
}
