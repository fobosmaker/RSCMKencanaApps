import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/bloc/user_bloc.dart';
import 'package:blocapiapp/src/model/login_model.dart';
import 'package:blocapiapp/src/screen/home.dart';
import 'package:blocapiapp/src/screen/shared_preferences.dart';
import 'package:blocapiapp/src/screen/verification.dart';
import 'package:blocapiapp/src/view/widget/form_input.dart';
import 'package:blocapiapp/src/view/widget/widget_circular_progress.dart';
import 'package:blocapiapp/src/view/widget/widget_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalLayoutLogin extends StatefulWidget {
  @override
  _HorizontalLayoutStateLogin createState() => _HorizontalLayoutStateLogin();
}

class _HorizontalLayoutStateLogin extends State<HorizontalLayoutLogin> {
  final _formLogin = GlobalKey<FormState>();
  final userName = TextEditingController();
  final password = TextEditingController();
  bool isClick = false;
  final bloc = userBLoc();

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
              child: SingleChildScrollView(
                  child: Form(
                    key: _formLogin,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FormInputWidget(label: "Username", controller: userName, isPassword: false),
                        FormInputWidget(label: "Password", controller: password, isPassword: true),
                        ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationPage(flag: 0)));
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
                              if(snapshot.connectionState == ConnectionState.active){

                                //if error come from API
                                if(snapshot.hasError){
                                  print('layout login ${snapshot.error.toString()}');
                                  setState(() {
                                    isClick = false;
                                  });
                                  return InkWell(
                                    onTap: (){
                                      setState(() {
                                        //check validasi
                                        if (_formLogin.currentState.validate()) {
                                          isClick = true;
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
                                        'Login',
                                        style: TextStyle(color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  );
                                }

                                //default return generate widget
                                else {
                                  print('yeay');
                                  return InkWell(
                                    onTap: (){
                                      setState(() {
                                        //check validasi
                                        if (_formLogin.currentState.validate()) {
                                          isClick = true;
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
                                        'Login',
                                        style: TextStyle(color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  );//generateWidget(snapshot.data);
                                }
                              }
                              //default run circular progress
                              return Center(child: WidgetCircularProgress());
                              })

                              //print('yeay');
                              //return Container();
                              //print('cek state: ${snapshot.connectionState}');
                             /* if(snapshot.connectionState == ConnectionState.active){
                                if(snapshot.hasData){
                                  //LoginModel result = snapshot.data;
                                 *//* if(result.statusCode == "200"){
                                    print('login sukses');
                                    //insert shared preferences (session)
                                    MySharedPreferences sp = MySharedPreferences(context: this.context);
                                    sp.saveData(pasienUjiCoba, true);
                                    WidgetsBinding.instance.addPostFrameCallback((_){
                                      setState(() {
                                        isClick = false;
                                        Navigator.pushReplacementNamed(context,'/home');
                                      });
                                    });
                                  }
                                  else{
                                    print('login status code error message ${result.message}');
                                  }*//*
                                  setState(() {
                                    isClick = false;
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
                              }*/
                           /* })*/
                            :
                        InkWell(
                          onTap: (){
                            setState(() {
                              //check validasi
                              if (_formLogin.currentState.validate()) {
                                isClick = true;
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
                              'Login',
                              style: TextStyle(color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationPage(flag: 1)));
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
                    ),
                  )
              ),
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

  final _formLogin = GlobalKey<FormState>();
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
          color: defaultAppbarColor
        ),
        child:  SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 50,),
              Center(
                child: Image(image: AssetImage('assets/rscm_kencana_logo.jpg'),width: 200, height: 100, alignment: Alignment.centerLeft),
              ),
              SizedBox(height: 50,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                  ),
                  padding: EdgeInsets.all(40),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formLogin,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          FormInputWidget(label: "Username", controller: userName, isPassword: false),
                          FormInputWidget(label: "Password", controller: password, isPassword: true),
                          ListTile(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationPage(flag: 0)));
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
                         /* StreamBuilder(
                              initialData: bloc.fetchDataLogin(userName.text,password.text),
                              stream: bloc.dataLogin,
                              builder: (context, AsyncSnapshot snapshot){
                                print('cek state: ${snapshot.connectionState}');
                                if(snapshot.connectionState == ConnectionState.active){
                                  if(snapshot.hasData){
                                    LoginModel result = snapshot.data;
                                    if(result.statusCode == "200") print('login sukses');
                                    else print(result.message);

                                    //insert shared preferences (session)
                                    MySharedPreferences sp = MySharedPreferences(context: this.context);
                                    sp.saveData(pasienUjiCoba, true);

                                    WidgetsBinding.instance.addPostFrameCallback((_){
                                      setState(() {
                                        isClick = false;
                                        Navigator.pushReplacementNamed(context,'/home');
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
                              })*/
                          StreamBuilder(
                              initialData: bloc.fetchDataLogin(userName.text,password.text),
                              stream: bloc.dataLogin,
                              builder: (context, AsyncSnapshot snapshot){
                                if(snapshot.connectionState == ConnectionState.active){

                                  if(snapshot.hasData) {
                                    LoginModel data = snapshot.data;
                                    if(data.statusCode == "200"){
                                      print('loginResult: ${data.data.patient_id}');
                                      MySharedPreferences sp = MySharedPreferences(context: this.context);
                                      //sp.saveData(pasienUjiCoba, true);

                                      print(data.data.toString());
                                      sp.savePatientPref(data.data, true);

                                      //print('yeay');
                                      WidgetsBinding.instance.addPostFrameCallback((_){
                                        setState(() {
                                          isClick = false;
                                          Navigator.pushReplacementNamed(context,'/home');
                                        });
                                      });
                                    } else {
                                      print('data error ${data.message}');
                                    }
                                  }

                                  //if error come from API
                                  if(snapshot.hasError || snapshot == null){
                                    print('layout login ${snapshot.error.toString()}');
                                  }

                                  //default return generate widget
                                  WidgetsBinding.instance.addPostFrameCallback((_){
                                    setState(() {
                                      isClick = false;
                                    });
                                  });
                                }
                                //default run circular progress
                                return Center(child: WidgetCircularProgress());
                              })
                              :
                          InkWell(
                            onTap: (){
                              setState(() {
                                //check validasi
                                if (_formLogin.currentState.validate()) {
                                  isClick = true;
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
                                'Login',
                                style: TextStyle(color: Colors.white, letterSpacing: 0.5, fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationPage(flag: 1)));
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
                      ),
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}