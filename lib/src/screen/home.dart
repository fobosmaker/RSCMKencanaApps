import 'package:blocapiapp/src/screen/login.dart';
import 'package:blocapiapp/src/screen/shared_preferences.dart';
import 'package:blocapiapp/src/view/layout/draft_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    print('initState: run ${this.context}');
    SharedPreferencesPages().createState().checkBoolean();
    //check user session
    /*MySharedPreferences sp = MySharedPreferences(context: this.context);
    sp.getBool().then((val){
      //if there is no session
      if(!val){
        //move to login
        setState(() {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage() ));
        });
      }
    });*/

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return VerticalLayoutDraftHome();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
