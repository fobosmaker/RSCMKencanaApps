import 'package:blocapiapp/src/view/responsive_billing_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ResponsiveBilling extends StatefulWidget {
  @override
  _ResponsiveBillingState createState() => _ResponsiveBillingState();
}

class _ResponsiveBillingState extends State<ResponsiveBilling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Billing')),
      body:  OrientationBuilder(builder: (context, orientation) {
        return MediaQuery.of(context).size.width > 600 ? otherView() : mobileView();
      }),
    ) ;

  }
}

Widget mobileView(){
  return renderBillingView();
}

Widget otherView(){
  return Row(
      children: <Widget>[
        Expanded(child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Ini layout billing'),
          ],
        )
        )
        ),
        Expanded(flex:1,child: dataTableView()),
      ]
  );
}

Widget renderBillingView(){
  return Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
        Text('Ini layout billing'),
        FlatButton(
          onPressed: (){
           print('pindah ke detail');
          },
          child: Text('View more'),
        )
      ],
    )
  );
}
