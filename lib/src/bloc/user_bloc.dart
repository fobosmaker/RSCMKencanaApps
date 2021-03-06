import 'dart:async';
import 'package:blocapiapp/src/model/login_model.dart';
import 'package:blocapiapp/src/provider/repository.dart';
class UserBLoc{

  final _repository = Repository();
  final _userLoginController = StreamController<LoginModel>.broadcast();
  Stream<LoginModel> get dataLogin => _userLoginController.stream;
  StreamSink<LoginModel> get _inDataLogin => _userLoginController.sink;
  fetchDataLogin(String username, String password) async {
    print('fetchDataLogin: run');
    try{
      LoginModel data = await _repository.login(username, password);
      print('fetchDataLogin: ${data.statusCode}, patient_id: ${data.data.patientId}, patient_name: ${data.data.patientName}, patient_mrn: ${data.data.patientMRN}');
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