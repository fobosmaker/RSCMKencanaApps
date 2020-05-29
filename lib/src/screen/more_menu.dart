import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/screen/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreMenuPage extends StatefulWidget {
  @override
  _MoreMenuPageState createState() => _MoreMenuPageState();
}

class _MoreMenuPageState extends State<MoreMenuPage> {

  MySharedPreferences sp;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    //cek session first
    sp = MySharedPreferences(context: this.context);
    sp.checkBoolean();

    //if user login
    return Scaffold(
        appBar: AppBar(
          title: Text('More'),
          backgroundColor: defaultAppbarColor,
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context,'/profile');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Text(
                      'Profil pasien',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.5
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/about');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Text(
                      'Tentang RSCM Kencana',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.5
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                ),
                InkWell(
                  onTap: (){
                    print('Logout click');
                    _showMyDialog();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Text(
                      'Keluar',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.5
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                ),
              ],
            )
        )
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Keluar'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Apakah anda yakin ingin keluar dari aplikasi ini?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                  'Batal',
                style: TextStyle(color: defaultAppbarColor)
              ),
              onPressed: () {
                print('cancel clicked');
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(
                  'Keluar',
                  style: TextStyle(color: defaultAppbarColor)
              ),
              onPressed: () {
                print('logout clicked');
                sp.clearData();
                Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
              },
            ),
          ],
        );
      },
    );
  }
}