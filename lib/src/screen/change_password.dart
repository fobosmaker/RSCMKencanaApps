import 'package:blocapiapp/constant.dart';
import 'package:flutter/material.dart';
class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {

  final oldPass = TextEditingController();
  final newPass = TextEditingController();
  final confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Ubah Password'),
        backgroundColor: defaultAppbarColor,
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            onTap: (){
              print('${oldPass.text} ${newPass.text} ${confirmPass.text}');
            },
            child: Icon(
              Icons.send,
              color: defaultAppbarContentColor,
            ),
          ),
          SizedBox(width: 15)
        ],
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15,20,15,0),
            title: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: Text('Tips', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700))
            ),
            subtitle: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Text('Gunakan kombinasi huruf, angka dan tanda baca agar passwordmu sulit ditebak', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                title: Text(
                    "Password lama",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 13
                    )
                ),
                subtitle: TextField(
                  obscureText: true,
                  controller: oldPass,
                  maxLines: 1,
                  )
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                title: Text(
                  "Password baru",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 13
                  )
                ),
                subtitle: TextField(
                  obscureText: true,
                  controller: newPass,
                  maxLines: 1,
                  )
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                title: Text("Konfirmasi password baru",
                  style: TextStyle(
                  color: Colors.teal,
                  fontSize: 13)
                ),
                subtitle: TextField(
                  obscureText: true,
                  controller: confirmPass,
                  maxLines: 1,
                  )
                )
              ],
              )
            )
          ],
        ),
      ),
    );
  }
}