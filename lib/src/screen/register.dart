import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/screen/home.dart';
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
      backgroundColor: defaultAppbarColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: defaultAppbarColor,
              floating: false,
              snap: false,
              pinned: true,
              //set icon on left side
              leading: Container(),
              //expandedHeight: 200,
              centerTitle: true,
              //title on appbar
              title: Text('Registrasi'),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text('Selamat datang,',style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: 0.5), textAlign: TextAlign.center,),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ExpansionTile(
                    title: Text('Kemal Wibisono',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300, color: Colors.grey[700])),
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text('Selangkah lagi untuk mendapatkan akunmu. Silahkan input password dengan menggunakan kombinasi huruf, angka dan tanda baca agar passwordmu sulit ditebak.,',style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: 0.5), textAlign: TextAlign.center,),
                ),
                /*Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[50],
                      ),
                      margin: EdgeInsets.only(left: 40, top: 40, right: 40),
                      //padding: EdgeInsets.only(top: 10, bottom: 20),
                      //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              title: Text(
                                  "Password",
                                  style: TextStyle(
                                      color: defaultAppbarColor,
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
                                      color: defaultAppbarColor,
                                      fontSize: 13)
                              ),
                              subtitle: TextField(
                                obscureText: true,
                                //controller: confirmPass,
                                maxLines: 1,
                              )
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: defaultAppbarColor,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Text(
                                'Submit',
                                style: TextStyle(color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ),*/
              ]),
            ),
          ];
        },
        body: Container(
            decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
            ),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[50],
                ),
                margin: EdgeInsets.only(left: 40, top: 40, right: 40),
                //padding: EdgeInsets.only(top: 10, bottom: 20),
                //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        title: Text(
                            "Password",
                            style: TextStyle(
                                color: defaultAppbarColor,
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
                        title: Text("Konfirmasi Password",
                            style: TextStyle(
                                color: defaultAppbarColor,
                                fontSize: 13)
                        ),
                        subtitle: TextField(
                          obscureText: true,
                          //controller: confirmPass,
                          maxLines: 1,
                        )
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: defaultAppbarColor,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
        ),
    );
  }
}
