import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/view/widget/form_input.dart';
import 'package:flutter/material.dart';

/*
  * flag digunakan untuk menentukan page mana selanjutnya ketika button verifikasi di klik. flag berupa integer
  * flag = 0 ( forgot password reset )
  * flag = 1 ( registrasi user)
*/

class VerificationPage extends StatefulWidget {

  final int flag;
  VerificationPage({this.flag});

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
              child: widget.flag == 0 ?
              Text('Sebelum anda mereset password, kami akan melakukan verifikasi data nomor rekam medik anda kedalam sistem kami untuk memastikan anda merupakan pasien dari RSCM Kencana',style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: 0.5), textAlign: TextAlign.center,)
                  :
              Text('Sebelum anda melakukan registrasi, kami akan melakukan verifikasi data nomor rekam medik anda kedalam sistem kami untuk memastikan anda merupakan pasien dari RSCM Kencana',style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: 0.5), textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20),
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
                        FormInputWidget(label: "Nomor Rekam Medik", controller: nomorRekamMedik, isPassword: false),
                        FormInputWidget(label: "Tanggal Lahir", controller: tanggalLahir, isPassword: false),
                        InkWell(
                          onTap: (){
                            setState(() {
                              if(_formVerification.currentState.validate()){
                                if(widget.flag == 0) Navigator.pushNamed(context,'/forgot_password');
                                if(widget.flag == 1) Navigator.pushNamed(context,'/registration');
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