import 'dart:convert';
import 'dart:io';
import 'package:blocapiapp/src/model/login_model.dart';

class UserProvider{

  Future<LoginModel> login(String username, String password) async {
    String url = 'https://www.rscm.co.id/apirscm/kencana.php';
    Map map = {
      "user_nm":"UMSI",
      "key":"091ae7a29c4795860f69b4077e8b432c",
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
      print('UserProvider login response statusCode: ${response.statusCode}');

      String reply = await response.transform(utf8.decoder).join();
      print('UserProvider login response transform ${reply.toString()}');

      final jsonData = jsonDecode(reply);
      if(jsonData['statusCode'] == '200'){
        print('UserProvider login response statusCode: 200');
        if(jsonData['data'].runtimeType == [].runtimeType  || jsonData['data'] == 'gagal' || jsonData['data'] == null){
          print('UserProvider login response: data kosong');
          return null;
        } else {
          print('UserProvider login response: data ada');
          return new LoginModel( statusCode: jsonData['statusCode'], message: jsonData['message'], data: new LoginDataModel(patient_id: jsonData['data']['patient_id'], mrn: jsonData['data']['mrn'], patient_nm: jsonData['data']['patient_nm']) );
        }
      } else{
        //print('UserProvider login response error');
        throw Exception('Login failed!');
      }
      //return new LoginModel(statusCode: resultMap['statusCode'].toString(), message: resultMap['message'].toString(),data: new LoginDataModel(patient_id: resultMap['data']['patient_id'].toString(),mrn: resultMap['data']['mrn'].toString(), patient_nm: resultMap['data']['patient_nm'].toString()));
    } catch (e){
      throw Exception(e);
    }
  }
}