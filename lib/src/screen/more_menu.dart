import 'package:blocapiapp/src/screen/about.dart';
import 'package:blocapiapp/src/screen/account.dart';
import 'package:blocapiapp/src/screen/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MoreMenuPage extends StatefulWidget {
  @override
  _MoreMenuPageState createState() => _MoreMenuPageState();
}

class _MoreMenuPageState extends State<MoreMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Text(
                    'Pengaturan akun',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage() ));
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
                style: TextStyle(color: Colors.teal)
              ),
              onPressed: () {
                print('cancel clicked');
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(
                  'Keluar',
                  style: TextStyle(color: Colors.teal)
              ),
              onPressed: () {
                print('logout clicked');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}