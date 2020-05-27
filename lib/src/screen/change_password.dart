import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/screen/login.dart';
import 'package:flutter/material.dart';
class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {

  final _formChangePassword = GlobalKey<FormState>();
  final oldPass = TextEditingController();
  final newPass = TextEditingController();
  final confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ubah Password'),
        backgroundColor: defaultAppbarColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: defaultAppbarColor
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text('Gunakan kombinasi huruf, angka dan tanda baca agar passwordmu sulit ditebak.',style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: 0.5), textAlign: TextAlign.center,),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                  ),
                  padding: EdgeInsets.only(left: 40, top: 40, right: 40),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formChangePassword,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              title: Text(
                                  "Password Lama",
                                  style: TextStyle(
                                      color: defaultAppbarColor,
                                      fontSize: 13,
                                      letterSpacing: 0.5
                                  )
                              ),
                              subtitle: TextFormField(
                                maxLines: 1,
                                controller: oldPass,
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty) return 'Password lama tidak boleh kosong!';
                                  if (value.contains(defaultRegex,0)) return 'Terdapat karakter yang tidak diizinkan!';
                                  return null;
                                },
                              )
                          ),
                          ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              title: Text(
                                  "Password Baru",
                                  style: TextStyle(
                                      color: defaultAppbarColor,
                                      fontSize: 13,
                                      letterSpacing: 0.5
                                  )
                              ),
                              subtitle: TextFormField(
                                maxLines: 1,
                                controller: newPass,
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty) return 'Password baru tidak boleh kosong!';
                                  if (value.contains(defaultRegex,0)) return 'Terdapat karakter yang tidak diizinkan!';
                                  return null;
                                },
                              )
                          ),
                          ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              title: Text(
                                  "Konfirmasi Password Baru",
                                  style: TextStyle(
                                      color: defaultAppbarColor,
                                      fontSize: 13,
                                      letterSpacing: 0.5
                                  )
                              ),
                              subtitle: TextFormField(
                                maxLines: 1,
                                controller: confirmPass,
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty) return 'Konfirmasi password baru tidak boleh kosong!';
                                  if (value.contains(defaultRegex,0)) return 'Terdapat karakter yang tidak diizinkan!';
                                  return null;
                                },
                              )
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(_formChangePassword.currentState.validate()){
                                  print('valid input ${oldPass.text} ${newPass.text} ${confirmPass.text} ');
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                }
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
                                'Ubah',
                                style: TextStyle(color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}