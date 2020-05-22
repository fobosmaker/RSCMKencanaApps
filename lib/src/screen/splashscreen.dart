import 'package:blocapiapp/src/screen/login.dart';
import 'package:flutter/material.dart';
class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      // 3s over, navigate to a new page
      Navigator.pushReplacement(context, MaterialPageRoute( builder: (context) => LoginPage() ));
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/rscm_kencana.jpg'),
                  fit: BoxFit.fitHeight
              )
            ),
            child: Container(
                margin: EdgeInsets.only(left: 15, top: 15),
                alignment: Alignment.topLeft,
                child: Image(
                  image: AssetImage('assets/rscm_kencana_logo.jpg'),
                  width: 100,
                  height: 50 )
            ),
          )
      ),
    );
  }
}
