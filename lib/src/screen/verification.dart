import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/screen/register.dart';
import 'package:flutter/material.dart';
class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
          //add gradasi
          /*gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.teal,
                  Colors.teal[400],
                  Colors.teal[300],
                  Colors.teal[200],
                  Colors.teal[100],
                ]
            ),*/
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
                child: Text('Sebelum anda melakukan registrasi, kami akan melakukan verifikasi data nomor rekam medik anda kedalam sistem kami untuk memastikan anda merupakan pasien dari RSCM Kencana',style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: 0.5), textAlign: TextAlign.center,),
              ),
              SizedBox(height: 20,),
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
                      //padding: EdgeInsets.only(top: 10, bottom: 20),
                      //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                              subtitle: TextField(
                                obscureText: true,
                                //controller: newPass,
                                maxLines: 1,
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
                              subtitle: TextField(
                                obscureText: true,
                                //controller: confirmPass,
                                maxLines: 1,
                              )
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
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
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
