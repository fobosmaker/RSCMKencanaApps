import 'package:flutter/material.dart';
class PageNoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                  padding: EdgeInsets.all(4),
                  child: Center(
                      child: Image(
                          image: AssetImage('assets/no_data.png')
                      )
                  )
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text('Oops we cannot find what are your looking for '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
