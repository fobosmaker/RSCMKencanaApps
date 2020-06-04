import 'package:blocapiapp/src/screen/shared_preferences.dart';
import 'package:blocapiapp/src/view/layout/draft_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = new GlobalKey<RefreshIndicatorState>();
  bool isRefresh = false;

  @override
  void initState() {
    print('Home initState: run ');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Home build: run ');
    //check user session
    new MySharedPreferences(context: context).checkBoolean();

    return RefreshIndicator(
        key:_refreshIndicatorKey,
        child: VerticalLayoutDraftHome(),
        onRefresh: refresh
    );
      
      //VerticalLayoutDraftHome();
  }

  Future<Null> refresh() async {
    print('refresh run');
    /*setState(() {
      isRefresh = true;
    });
    return (setState(() {}));*/
  }

  @override
  void dispose() {
    super.dispose();
  }
}
