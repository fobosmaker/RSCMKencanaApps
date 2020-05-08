
import 'package:blocapiapp/src/view/loading_screen.dart';
import 'package:flutter/material.dart';
class ResponsiveLogin extends StatefulWidget {
  @override
  _ResponsiveLoginState createState() => _ResponsiveLoginState();
}

class _ResponsiveLoginState extends State<ResponsiveLogin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RSCM Kencana'),
      ),
      body:
      OrientationBuilder(builder: (context, orientation) {
      return MediaQuery.of(context).size.width > 500 ? otherView() : mobileView();
      }),
    );
  }

  Widget mobileView(){
    return Column(
    children: <Widget>[
        Expanded(child: LoadingScreen()),
        Expanded(child: FormLogin()),
      ],
    );
  }

  Widget otherView(){
    return Row(
        children: <Widget>[
          Expanded(child: LoadingScreen()),
          Expanded(child: FormLogin()),
        ]
    );
  }
}
