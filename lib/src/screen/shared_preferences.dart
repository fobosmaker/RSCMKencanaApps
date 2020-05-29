import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences{
  String myStringKey = 'key_my_string';
  String myBoolKey = 'key_my_bool';
  BuildContext context;

  MySharedPreferences({this.context});

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
    //return true;
  }

  Future<String> getString() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(myStringKey) ?? "No string found";
  }

  void clearData() async {
    print('MySharedPreferences: clearData run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }

  void checkBoolean(){
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
