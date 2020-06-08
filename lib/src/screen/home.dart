import 'package:blocapiapp/src/screen/shared_preferences.dart';
import 'package:blocapiapp/src/view/layout/draft_home.dart';
import 'package:blocapiapp/src/view/widget/widget_circular_progress.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = new GlobalKey<RefreshIndicatorState>();
  bool isRefresh = false;
  bool isGetSP = false;
  String patientId;
  String patientName;
  String patientMRN;

  @override
  void initState() {
    print('Home initState: run ');
    MySharedPreferences sp = MySharedPreferences(context: context);
    sp.getPatientIsLogin().then((isLogin){
      print('initState: $isLogin');
      if(isLogin){
        sp.getPatientMRN().then((patientMRN){
          print('initstate: $patientMRN');
          this.patientMRN = patientMRN;
          if(patientMRN != null){
            sp.getPatientName().then((patientName){
              this.patientName = patientName;
              print('initstate: $patientName');
            });
          } else sp.clearData();
        });
      } else sp.clearData();
    });
   /* sp.getBool().then((bool){
      if(!bool) sp.clearData();
      else {
        sp.getString().then((val){
          if(val == null) sp.clearData();
          else{
            setState(() {
              isGetSP = true;
              medicalRecordNumber = val;
            });
          }
        }, onError:(err) => print('sp getString $err'));
      }
    },onError:(err) => print('sp getBool $err'));*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Home build: run ');
    return isGetSP == true ? VerticalLayoutDraftHome(patientMRN,patientName) : Center(child: WidgetCircularProgress());
  }

  Future<Null> refresh() async {
    print('refresh run');
    setState(() {
      isGetSP = false;
    });
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
