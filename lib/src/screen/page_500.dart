import 'package:blocapiapp/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Page500 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: defaultAppbarColor,
        //title: Text('Oops...', style: TextStyle(color: defaultAppbarContentColor)),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('assets/default_error.png'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 75),
                child: Text(
                    'Ooops...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        wordSpacing: 1,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600
                    )
                )
            ),
            Container(
                color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 75, vertical: 15),
                child: Text(
                    'Something wrong happenned, please comeback later...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        wordSpacing: 1,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w200
                    )
                )
            ),
            Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: FlatButton.icon(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.refresh, color: defaultAppbarColor,), label: Text('Refresh', style: TextStyle(
                    color: defaultAppbarColor)))
            )
          ],
        ),
      )
    );
  }
}
