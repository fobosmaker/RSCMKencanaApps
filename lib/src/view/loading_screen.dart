import 'package:blocapiapp/src/bloc/user_bloc.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[500],
      child: Center(child: Text('loading Screen')),
    );
  }
}

class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final bloc = userBLoc();

  @override
  void initState() {
    bloc.fetchDataFromMultiProvider();
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
      color: Colors.grey[100],
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: FormLogin(),
        ),
      ),
    );
  }
}

Widget cardDetailBilling(){
  return Center(
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            title: Text('Visite'),
            subtitle: Text('@ Dina Aprilia Ariestine, dr., SpPD'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('IDR 350,000'),
                onPressed: () { /* ... */ },
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


