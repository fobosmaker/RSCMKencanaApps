import 'package:blocapiapp/src/view/widget/list_tile_profile.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            onTap: (){
              //print('${oldPass.text} ${newPass.text} ${confirmPass.text}');
            },
            child: Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 15)
        ],
      ),
      body: Container(
        //padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15,20,15,0),
              title: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  child: Text('Selamat datang,', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
              ),
              subtitle: Container(
                child: ExpansionTile(
                  title: Text('Kemal Wibisono',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300, color: Colors.teal)),
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.fromLTRB(0,0,0,25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ListTileDetailProfile(title: 'Tempat tanggal lahir', content: 'Jakarta, 25 Februari 1993', icon: Icons.cake),
                            Divider(color: Colors.grey[300]),
                            ListTileDetailProfile(title: 'Nomor Rekam Medik', content: '443-79-01', icon: Icons.confirmation_number),
                            Divider(color: Colors.grey[300]),
                            ListTileDetailProfile(title: 'Jenis Kelamin', content: 'Laki-laki', icon: Icons.perm_identity),
                            Divider(color: Colors.grey[300]),
                            ListTileDetailProfile(title: 'Alamat', content: 'Komplek jati unggul blok a 11 no 16 harapan jaya bekasi utara Kota Bekasi', icon: Icons.home),
                            Divider(color: Colors.grey[300]),
                            ListTileDetailProfile(title: 'Telepon', content: '082143530880', icon: Icons.phone)
                          ],
                        )
                    )
                  ],
                )
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical:10,horizontal: 15),
              subtitle: Container(
                child: Text('Selangkah lagi untuk mendapatkan akunmu. Silahkan input password dengan menggunakan kombinasi huruf, angka dan tanda baca agar passwordmu sulit ditebak.', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300, letterSpacing: 0.5),),
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
                            "Password",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 13
                            )
                        ),
                        subtitle: TextField(
                          obscureText: true,
                          //controller: newPass,
                          maxLines: 1,
                        )
                    ),
                    ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        title: Text("Konfirmasi password",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 13)
                        ),
                        subtitle: TextField(
                          obscureText: true,
                          //controller: confirmPass,
                          maxLines: 1,
                        )
                    )
                  ],
                )
            ),

           /* ExpansionTile(
              title: Text('Lihat profil',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700, color: Colors.teal)),
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ListTileDetailProfile(title: 'Nama', content: 'Kemal Wibisono', icon: Icons.person),
                        Divider(color: Colors.grey[300]),
                        ListTileDetailProfile(title: 'Tempat tanggal lahir', content: 'Jakarta, 25 Februari 1993', icon: Icons.cake),
                        Divider(color: Colors.grey[300]),
                        ListTileDetailProfile(title: 'Nomor Rekam Medik', content: '443-79-01', icon: Icons.confirmation_number),
                        Divider(color: Colors.grey[300]),
                        ListTileDetailProfile(title: 'Jenis Kelamin', content: 'Laki-laki', icon: Icons.perm_identity),
                        Divider(color: Colors.grey[300]),
                        ListTileDetailProfile(title: 'Alamat', content: 'Komplek jati unggul blok a 11 no 16 harapan jaya bekasi utara Kota Bekasi', icon: Icons.home),
                        Divider(color: Colors.grey[300]),
                        ListTileDetailProfile(title: 'Telepon', content: '082143530880', icon: Icons.phone)
                      ],
                    )
                )
              ],
            ),*/

            /*ListTile(
              contentPadding: EdgeInsets.fromLTRB(15,20,15,0),
              title: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  child: Text('Tips', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700))
              ),
              subtitle: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Text('Gunakan kombinasi huruf, angka dan tanda baca agar passwordmu sulit ditebak', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
              ),
            ),*/

          ],
        ),
      ),
    );
  }
}
