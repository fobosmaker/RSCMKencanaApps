import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/screen/register.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {

  final _formVerification = GlobalKey<FormState>();
  final nomorRekamMedik = TextEditingController();
  final tanggalLahir = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Verifikasi'),
        backgroundColor: defaultAppbarColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: defaultAppbarColor
        ),
        child:  SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text('Sebelum anda melakukan registrasi, kami akan melakukan verifikasi data nomor rekam medik anda kedalam sistem kami untuk memastikan anda merupakan pasien dari RSCM Kencana',style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: 0.5), textAlign: TextAlign.center,),
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
                    key: _formVerification,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            title: Text(
                                "Nomor Rekam Medik",
                                style: TextStyle(
                                    color: defaultAppbarColor,
                                    fontSize: 13,
                                    letterSpacing: 0.5
                                )
                            ),
                            subtitle: TextFormField(
                              maxLines: 1,
                              controller: nomorRekamMedik,
                              validator: (value) {
                                if (value.isEmpty) return 'Nomor rekam medik tidak boleh kosong!';
                                if (value.contains(defaultRegex,0)) return 'Terdapat karakter yang tidak diizinkan!';
                                return null;
                              },
                            )
                        ),
                        ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            title: Text("Tanggal Lahir",
                                style: TextStyle(
                                    color: defaultAppbarColor,
                                    fontSize: 13,
                                    letterSpacing: 0.5
                                )
                            ),
                            subtitle: TextFormField(
                              maxLines: 1,
                              controller: tanggalLahir,
                              validator: (value) {
                                if (value.isEmpty) return 'Tanggal lahir tidak boleh kosong!';
                                if (value.contains(defaultRegex,0)) return 'Terdapat karakter yang tidak diizinkan!';
                                return null;
                              },
                            )
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              if(_formVerification.currentState.validate()){
                                print('valid');
                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
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
                              'Verifikasi',
                              style: TextStyle(color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text(
                              'Kembali',
                              style: TextStyle(color: defaultAppbarColor, letterSpacing: 0.5, fontWeight: FontWeight.w300),
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