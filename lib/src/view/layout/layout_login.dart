import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/bloc/user_bloc.dart';
import 'package:blocapiapp/src/screen/home.dart';
import 'package:blocapiapp/src/screen/verification.dart';
import 'package:blocapiapp/src/view/widget/card_profile.dart';
import 'package:blocapiapp/src/view/widget/form_login.dart';
import 'package:blocapiapp/src/view/widget/widget_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalLayoutLogin extends StatefulWidget {
  @override
  _HorizontalLayoutStateLogin createState() => _HorizontalLayoutStateLogin();
}

class _HorizontalLayoutStateLogin extends State<HorizontalLayoutLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: WidgetLogo(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: WidgetFormLogin(),
            ),
          ),
        ],
      ),
    );
  }
}

class VerticalLayoutLogin extends StatefulWidget {
  @override
  _VerticalLayoutStateLogin createState() => _VerticalLayoutStateLogin();
}

class _VerticalLayoutStateLogin extends State<VerticalLayoutLogin> {

  final userName = TextEditingController();
  final password = TextEditingController();
  bool isClick = false;
  final bloc = userBLoc();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
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
              SizedBox(height: 50,),
              Center(
                //padding: const EdgeInsets.all(20),
                child: Image(image: AssetImage('assets/rscm_kencana_logo.jpg'),width: 200, height: 100, alignment: Alignment.centerLeft),
              ),
              SizedBox(height: 50,),
              /*Padding(
                padding: const EdgeInsets.all(20),
                child: Image(image: AssetImage('assets/rscm_kencana_logo.jpg'),width: 200, height: 100, alignment: Alignment.centerLeft),
              ),*/
              /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Login',style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w400,letterSpacing: 0.5), textAlign: TextAlign.end,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text('Selamat datang di Aplikasi Pasien',style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: 0.5), textAlign: TextAlign.end,),
              ),*/
             /* Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/rscm_kencana.jpg'),fit: BoxFit.fill),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40))
                ),
              ),*/
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
                                  "Email",
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
                              title: Text("Password",
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
                          ListTile(
                            onTap: (){
                              print('lupa password click');
                            },
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            leading: Icon(Icons.security),
                            title: Text("Lupa password?",
                                style: TextStyle(
                                    color: defaultAppbarColor,
                                    fontSize: 13,
                                    letterSpacing: 0.5
                                )
                            ),
                          ),
                          isClick == true ?
                          StreamBuilder(
                              initialData: bloc.fetchDataLogin(userName.text,password.text),
                              stream: bloc.dataLogin,
                              builder: (context, AsyncSnapshot snapshot){
                                print('cek state: ${snapshot.connectionState}');
                                if(snapshot.connectionState == ConnectionState.active){
                                  if(snapshot.hasData){
                                    //LoginModel result = snapshot.data;
                                    //if(result.statusCode == "200") print('login sukses');
                                    //else print(result.message);
                                    WidgetsBinding.instance.addPostFrameCallback((_){
                                      setState(() {
                                        isClick = false;
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage() ));
                                      });
                                    });
                                    return Container();
                                  }
                                  else  return Text(snapshot.error.toString());
                                }  else {
                                  return Center(
                                    child: Container(
                                        padding: EdgeInsets.all(20),
                                        child: CircularProgressIndicator()
                                    ),
                                  );
                                }
                              })
                              :
                          InkWell(
                            onTap: (){
                              setState(() {
                                isClick = true;
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
                                  'Login',
                                style: TextStyle(color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Text(
                                'Registrasi',
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

              /*Expanded(
                flex: 1,
                child: ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    //width: double.infinity,
                    decoration: BoxDecoration(

                      //add gradasi
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              //Colors.teal[200],
                              Colors.teal[100],
                              Colors.white
                            ]
                        ),

                        image: DecorationImage(image: AssetImage('assets/rscm_kencana.jpg'))
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: WidgetLogo(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: WidgetFormLogin(),
                ),
              ),*/
            ],
          ),
        ),

      /*SafeArea(
        child:

        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  //width: double.infinity,
                  decoration: BoxDecoration(

                    //add gradasi
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        //Colors.teal[200],
                        Colors.teal[100],
                        Colors.white
                      ]
                    ),

                    image: DecorationImage(image: AssetImage('assets/rscm_kencana.jpg'))
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: WidgetLogo(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: WidgetFormLogin(),
              ),
            ),
          ],
        ),
      ),*/
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-80);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}