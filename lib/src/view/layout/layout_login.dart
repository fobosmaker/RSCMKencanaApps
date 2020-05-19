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
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white70,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
      ),
    );
  }
}