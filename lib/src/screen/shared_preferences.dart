import 'package:blocapiapp/src/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPages extends StatefulWidget {
  @override
  _SharedPreferencesPagesState createState() => _SharedPreferencesPagesState();
}

class _SharedPreferencesPagesState extends State<SharedPreferencesPages> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void checkBoolean(){
    MySharedPreferences sp = MySharedPreferences(context: this.context);
    sp.getBool().then((val){
      //if there is no session
      if(!val){
        //move to login
        setState(() {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage() ));
        });
      }
    });
  }
}




class MySharedPreferences{
  String myStringKey = 'key_my_string';
  String myBoolKey = 'key_my_bool';
  BuildContext context;

  MySharedPreferences({this.context});

  void saveData(String string, bool bool) async {
    print('MySharedPreferences: saveData run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(myStringKey, string);
    pref.setBool(myBoolKey, bool);
  }

  Future<bool> getBool() async {
    print('MySharedPreferences: getBool run');
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(myBoolKey) ?? false;
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
}
