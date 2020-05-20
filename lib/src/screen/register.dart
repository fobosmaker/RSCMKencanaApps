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
                /*Column(
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
                )*/
            ),
          ),
        ),
    );





      /*Scaffold(
      backgroundColor: defaultAppbarColor,
      body: CustomScrollView(
        slivers: <Widget>[
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
              Container(
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
                ),
            ]),
          ),
          SliverFillRemaining(
            child: Container(
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
            ),
          )
        ],
      ),
    );*/




     /* Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Registrasi'),
        backgroundColor: defaultAppbarColor,
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: defaultAppbarColor
            ),
            child:  SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
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
                  Expanded(
                    child: Container(
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
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );*/



    /*Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: defaultAppbarColor,
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            onTap: (){
              //print('${oldPass.text} ${newPass.text} ${confirmPass.text}');
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
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
                  title: Text('Kemal Wibisono',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300, color: defaultAppbarColor)),
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
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );*/
  }
}
