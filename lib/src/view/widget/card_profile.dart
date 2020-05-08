import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget cardProfile(){
  return Container(
    padding: const EdgeInsets.fromLTRB(8,8,8,4),
    child: Card(
        elevation:3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child:
                  /*ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,8),
                        child: Text(
                            'Kemal Wibisono',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.blueAccent,
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          '443-79-01',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,8,0,0),
                        child: Text(
                          'Poli Jantung',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12
                          ),
                        ),
                      )
                    ],
                  )*/
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,8),
                        child: Text(
                            'Kemal Wibisono',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.blueAccent,
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          '443-79-01',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,8,0,0),
                        child: Text(
                          'Poli Jantung',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )

            ),
            Expanded(
              flex: 1,
              child: Container(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.person_outline, size: 75,color: Colors.red[700]),
                ],
              ),)
            )
          ],
        ),
      ),
  );
}