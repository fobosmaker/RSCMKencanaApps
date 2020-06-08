import 'package:blocapiapp/src/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences{
  String patientId = 'patientId';
  String patientMRN = 'patientMRN';
  String patientName = 'patientName';
  String patientIsLogin = 'patientIsLogin';

  String myStringKey = 'key_my_string';
  String myBoolKey = 'key_my_bool';
  BuildContext context;

  MySharedPreferences({this.context});

  Future<void> savePatientPref(LoginDataModel data, bool isLogin) async {
    print('MySharedPreferences: savePatientPref run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    print('MySharedPreferences: savePatientPref data ${data.patient_id} ${data.patient_nm} ${data.mrn}');
    pref.setString(patientId, data.patient_id);
    pref.setString(patientMRN, data.mrn);
    pref.setString(patientName, data.patient_nm);
    pref.setBool(patientIsLogin, isLogin);
  }

  Future<bool> getPatientIsLogin() async {
    print('MySharedPreferences: getPatientIsLogin run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    print('MySharedPreferences: getBool : ${pref.getBool(patientIsLogin)}');
    return pref.getBool(patientIsLogin) ?? false;
  }

  Future<String> getPatientId() async {
    print('MySharedPreferences: getPatientId run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    print('MySharedPreferences: getPatientId : ${pref.getString(patientId)}');
    return pref.getString(patientId) ?? null;
  }

  Future<String> getPatientMRN() async {
    print('MySharedPreferences: getPatientMRN run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    print('MySharedPreferences: getPatientMRN : ${pref.getString(patientMRN)}');
    return pref.getString(patientMRN) ?? null;
  }

  Future<String> getPatientName() async {
    print('MySharedPreferences: getPatientName run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    print('MySharedPreferences: getPatientName : ${pref.getString(patientName)}');
    return pref.getString(patientName) ?? null;
  }



  Future<void> saveData(String string, bool bool) async {
    print('MySharedPreferences: saveData run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(myStringKey, string);
    pref.setBool(myBoolKey, bool);
  }

  Future<bool> getBool() async {
    print('MySharedPreferences: getBool run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    print('MySharedPreferences: getBool : ${pref.getBool(myBoolKey)}');
    return pref.getBool(myBoolKey) ?? false;
  }

  Future<String> getString() async {
    print('MySharedPreferences: getString run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    print('MySharedPreferences: getString : ${pref.getString(myStringKey)}');
    return pref.getString(myStringKey) ?? null;
  }

  void clearData() async {
    print('MySharedPreferences: clearData run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
    Navigator.pushReplacementNamed(context, '/login');
  }

  void checkBoolean() {
    print('MySharedPreferences: checkboolean run');
    MySharedPreferences sp = MySharedPreferences(context: this.context);
    sp.getBool().then((val){
      //if there is no session
      if(!val){
        //move to login
        print('MySharedPreferences: checkboolean $val');
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
  }
}
