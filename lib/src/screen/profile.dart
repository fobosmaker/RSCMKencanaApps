import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/screen/shared_preferences.dart';
import 'package:blocapiapp/src/view/widget/card_profile.dart';
import 'package:blocapiapp/src/view/widget/list_tile_profile.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    //check user session
    new MySharedPreferences(context: context).checkBoolean();

    //if user login
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
        backgroundColor: defaultAppbarColor,
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:10),
              child: CardProfile(pasienUjiCoba,'kemal'),
            ),
            ListTile(
                contentPadding: EdgeInsets.fromLTRB(15,20,15,0),
                title: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                    child: Text('Akun', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700))
                ),
                subtitle: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text('Setting password untuk akun anda', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                ),
                trailing : FlatButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context,'/change_password');
                    },
                    icon: Icon(Icons.edit),
                    label: Text('Ubah')
                )
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ListTileDetailProfile(title: 'Email', content: 'wibisonokemal@gmail.com', icon: Icons.email),
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15,20,15,0),
              title: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  child: Text('Biodata', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
              ),
              subtitle: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Text('Profil pasien dalam sistem electornic health record', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                margin: EdgeInsets.fromLTRB(15, 0, 15, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ListTileDetailProfile(title: 'Tempat tanggal lahir', content: 'Jakarta, 25 Februari 1993', icon: Icons.cake),
                    Divider(color: Colors.grey[300]),
                    ListTileDetailProfile(title: 'Nomor Rekam Medik', content: '443-79-01', icon: Icons.confirmation_number),
                    Divider(color: Colors.grey[300]),
                    ListTileDetailProfile(title: 'Jenis Kelamin', content: 'Laki-laki', icon: Icons.person),
                    Divider(color: Colors.grey[300]),
                    ListTileDetailProfile(title: 'Alamat', content: 'Komplek jati unggul blok a 11 no 16 harapan jaya bekasi utara Kota Bekasi', icon: Icons.home),
                    Divider(color: Colors.grey[300]),
                    ListTileDetailProfile(title: 'Telepon', content: '082143530880', icon: Icons.phone)
                  ],
                )
            )
          ],
        ),
      )
    );
  }
}