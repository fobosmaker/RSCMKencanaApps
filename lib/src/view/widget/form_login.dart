import 'package:blocapiapp/src/bloc/user_bloc.dart';
import 'package:blocapiapp/src/model/login_model.dart';
import 'package:blocapiapp/src/screen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetFormLogin extends StatefulWidget {
  @override
  _WidgetFormLoginState createState() => _WidgetFormLoginState();
}

class _WidgetFormLoginState extends State<WidgetFormLogin> {
  final userName = TextEditingController();
  final password = TextEditingController();
  bool isClick = false;
  final bloc = userBLoc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('fase build');
    return Center(
      child: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: userName,
                  maxLines: 1,
                  decoration: InputDecoration(hintText:'Username'),
                ),

                SizedBox(height: 10),
                TextField(
                  controller: password,
                  maxLines: 1,
                  decoration: InputDecoration(hintText:'Password'),
                ),
                SizedBox(height: 10),
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
                      } else if (snapshot.connectionState == ConnectionState.done){
                        //Move to billing
                        print('move to billing');
                        WidgetsBinding.instance.addPostFrameCallback((_){
                          Navigator.of(context).pushReplacementNamed('/billing');
                        });
                        return Container();
                        /*setState(() {
                        move();
                      });
                      return Container();*/
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    })
                    :
                  RaisedButton(
                    child: Text('Login'),
                    onPressed: (){
                      setState(() {
                        isClick = true;
                      });
                    },
                  ),
                FlatButton(
                    onPressed: (){
                    },
                    child: Text('Not a patient? click here',style: TextStyle(color: Colors.blue[200],),textAlign: TextAlign.left,)
                ),
              ],
            ),
          )
      ),
    );
  }
}

