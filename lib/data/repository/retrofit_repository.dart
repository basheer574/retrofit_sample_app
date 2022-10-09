import 'package:dio/dio.dart';
import 'package:retrofit_sample_app/data/network/api_client.dart';

import '../model/user.dart';

class RetrofitRepository{
  Future<List<User>> getClient(){
    final client = ApiClient(Dio(BaseOptions(contentType: 'application/json')));
    return client.getUsers();
  }
}