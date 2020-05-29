import 'package:blocapiapp/src/screen/shared_preferences.dart';
import 'package:blocapiapp/src/view/layout/draft_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    //check user session
    new MySharedPreferences(context: context).checkBoolean();

    return VerticalLayoutDraftHome();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
