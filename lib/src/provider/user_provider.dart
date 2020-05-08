import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:blocapiapp/src/model/billing_model.dart';
import 'package:blocapiapp/src/model/login_model.dart';
import 'package:blocapiapp/src/model/multi_provider_model.dart';
import 'package:blocapiapp/src/model/user_model.dart';
import 'package:blocapiapp/src/model/user_post_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show Client, Response;
class UserProvider{
  Client client = Client();

  Future<List<UserModel>> fetchUser() async {
    String url = 'http://jsonplaceholder.typicode.com/users';
    List<UserModel> x = [];
    try{
      Response response = await client.get(url);
      print('UserProvider: fetchUser status ${response.statusCode}');
      if(response.statusCode == 200) {
        List<dynamic> result = jsonDecode(response.body);
        for (int i = 0; i < result.length; i++) {
          x.add(UserModel(id: result[i]['id'],
              name: result[i]['name'],
              username: result[i]['username'],
              email: result[i]['email']));
        }
        print('UserProvider: get data sukses, ada ${x.length} data');
      } else print('connection error');
    } catch(e) {
      print('UserProvider: error $e');
    }
    return x;
  }

  Future<LoginModel> login(String username, String password) async {
    String url = 'https://www.rscm.co.id/apirscm/kencana.php';
    Map map = {
      "user_nm":"UMSI",
      "key":"091ae7a29c4795860f69b4077e8b432c",
      //"mrn":"3541300",
      //"birth_dttm":"1988-04-27",
      "mrn":username,
      "birth_dttm":password,
      "fungsi":"getLoginApps"
    };
    var body = json.encode(map);
    HttpClient clientReq = new HttpClient();
    clientReq.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
    try{
      HttpClientRequest req = await clientReq.postUrl(Uri.parse(url));
      req.headers.set('content-type', 'application/json');
      req.add(utf8.encode(body));
      HttpClientResponse response = await req.close();
      String reply = await response.transform(utf8.decoder).join();
      Map<String, dynamic> resultMap = await json.decode(reply);
     // print('login data: $reply');
      print('UserProvider login result : ${resultMap['statusCode']} message:${resultMap['message']} data: ${resultMap['data']['patient_nm']}');
      return new LoginModel(statusCode: resultMap['statusCode'].toString(), message: resultMap['message'].toString(),data: new LoginDataModel(patient_id: resultMap['data']['patient_id'].toString(),mrn: resultMap['data']['mrn'].toString(), patient_nm: resultMap['data']['patient_nm'].toString()));
    } catch (e){
      return new LoginModel(statusCode: '404', message: '${e.toString()}',data: new LoginDataModel(patient_id: null,mrn: null, patient_nm: null));
    }
  }

  Future<List<UserPostModel>> fetchUsersPost() async{
    String url = 'http://jsonplaceholder.typicode.com/posts';
    List<UserPostModel> x = [];
    try{
      Response response = await client.get(url);
      print('UserProvider: fetchUser status ${response.statusCode}');
      if(response.statusCode == 200) {
        List<dynamic> result = jsonDecode(response.body);
        for (int i = 0; i < result.length; i++) {
          x.add(UserPostModel(userId: result[i]['userId'],
              id: result[i]['id'],
              title: result[i]['title'],
              body: result[i]['body']));
        }
        print('UserProvider: get data sukses, ada ${x.length} data');
      } else print('connection error');
    } catch(e) {

      print('UserProvider: error $e');
    }
    return x;
  }

  Future<String> firstAsync() async {
    await Future<String>.delayed(const Duration(seconds: 2));
    return "First!";
  }

  Future<String> secondAsync() async {
    await Future<String>.delayed(const Duration(seconds: 2));
    return "Second!";
  }

  Future<List<dynamic>> getData() async{
    try {
      List<dynamic> responses = await Future.wait([firstAsync(), secondAsync()]);
      return responses;
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> getMultiProvider() async{
    try {
      List<dynamic> responses = await Future.wait([firstAsync(), secondAsync()]);
      return new MultiProvider(statusCode:200, data_1: responses[0], data_2: responses[1], message: 'success');
    } catch (e) {
      return new MultiProvider(statusCode:400, data_1: null, data_2: null, message: e.toString());
    }
  }

  Future addSave(String str) async{
    await Future<String>.delayed(const Duration(seconds: 3));
    print('UserProvider: $str');
    return str;
  }
}