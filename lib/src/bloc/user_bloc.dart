import 'dart:async';
import 'package:blocapiapp/src/model/login_model.dart';
import 'package:blocapiapp/src/model/multi_provider_model.dart';
import 'package:blocapiapp/src/model/user_model.dart';
import 'package:blocapiapp/src/model/user_post_model.dart';
import 'package:blocapiapp/src/provider/repository.dart';
import 'package:rxdart/rxdart.dart';
class userBLoc{

  final _repository = Repository();

  //GET FROM API
  //StreamController for data
  final _counterStateController = StreamController<List<UserModel>>();
  Stream<List<UserModel>> get userModelData => _counterStateController.stream;

  final userPostController = StreamController<List<UserPostModel>>();
  Stream<List<UserPostModel>> get userPostModelData => userPostController.stream;

  final dynamicController = StreamController<List<dynamic>>();
  Stream<List<dynamic>> get dynamicData => dynamicController.stream;

  final multiProviderController = StreamController<dynamic>();
  Stream<dynamic> get multiProviderData => multiProviderController.stream;

  final _loginController = StreamController<String>();
  Stream<String> get loginData => _loginController.stream;

  fetchAllUser() async {
    print('User_Bloc: async jalan');
    List<UserModel> user = await _repository.fetch_user_model();
    print('User_Bloc: data ada ${user.length}');
    _counterStateController.sink.add(user);
  }

  fetchUserPost() async {
    List<UserPostModel> post = await _repository.fetch_user_post_model();
    print('User_Bloc: data ada ${post.length}');
    userPostController.sink.add(post);
  }

  fetchData() async {
    List<dynamic> data = await _repository.fetch_multi_provider();
    print(data);
    dynamicController.sink.add(data);
  }

  fetchDataFromMultiProvider() async {
    dynamic event = await _repository.fetch_data_multi_provider();
    multiProviderController.sink.add(event);
  }

  //POST to API
  final _input = BehaviorSubject<String>();
  Function(String) get getUpdateTitle => _input.sink.add;
  addSave(){
    _repository.addSave(_input.value);
  }
  

  final _inputLogin = BehaviorSubject<String>();
  initialDataLogin(str) {
    print('initial run');
    _inputLogin.sink.add(str);
  }
  checkLogin(){
    print('checkLogin run');
    dynamic result = _repository.addSave(_inputLogin.value);
    print('checkLogin $result');
  }

  //Login API
  retrieveLoginData(String str) async {
    print('BLOC: $str');
    String result = await _repository.addSave(str);
    print('BLOC Result: $result');
    _loginController.sink.add(result);
  }

  final _userLoginController = StreamController<LoginModel>.broadcast();
  Stream<LoginModel> get dataLogin => _userLoginController.stream;
  StreamSink<LoginModel> get _inDataLogin => _userLoginController.sink;
  fetchDataLogin(String username, String password) async {
    print('fetchDataLogin: run');
    LoginModel data = await _repository.login(username, password);
    print('fetchDataLogin: ${data.statusCode}, message: ${data.data.patient_id}, mrn: ${data.data.patient_nm}');
    _inDataLogin.add(data);
    print('fetchDataLogin: finish');
  }

  dispose(){
    userPostController.close();
    dynamicController.close();
    multiProviderController.close();
    _counterStateController.close();
    _input.close();
    _loginController.close();
    _userLoginController.close();
  }

}
//final bloc = userBLoc();