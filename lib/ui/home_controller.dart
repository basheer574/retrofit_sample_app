import 'package:get/get.dart';
import 'package:retrofit_sample_app/data/model/user.dart';
import 'package:retrofit_sample_app/data/repository/retrofit_repository.dart';

class HomeController extends GetxController{
  final repository = RetrofitRepository();

  RxList<User> users = <User>[].obs;

  HomeController(){
    getPostApiCall();
  }
  Future<void> getPostApiCall() async{
    var result = await repository.getClient();
    users.value = result;
  }
}