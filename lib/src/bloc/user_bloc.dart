import 'dart:async';
import 'package:blocapiapp/src/model/login_model.dart';
/*
import 'package:blocapiapp/src/model/multi_provider_model.dart';
import 'package:blocapiapp/src/model/user_model.dart';
import 'package:blocapiapp/src/model/user_post_model.dart';
*/
import 'package:blocapiapp/src/provider/repository.dart';
//import 'package:rxdart/rxdart.dart';
class userBLoc{

  final _repository = Repository();
  final _userLoginController = StreamController<LoginModel>.broadcast();
  Stream<LoginModel> get dataLogin => _userLoginController.stream;
  StreamSink<LoginModel> get _inDataLogin => _userLoginController.sink;
  fetchDataLogin(String username, String password) async {
    print('fetchDataLogin: run');
    try{
      LoginModel data = await _repository.login(username, password);
      print('fetchDataLogin: ${data.statusCode}, message: ${data.data.patient_id}, mrn: ${data.data.patient_nm}');
      _inDataLogin.add(data);
    } catch(e) {
      print('fetchDataLogin: error found');
      _inDataLogin.addError(e);
    }
    print('fetchDataLogin: finish');
  }

  dispose(){
    _userLoginController.close();
  }

}
//final bloc = userBLoc();