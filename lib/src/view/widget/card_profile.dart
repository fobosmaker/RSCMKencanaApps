import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget cardProfile(){
  return SafeArea(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10)
      ),
      //padding: const EdgeInsets.all(8),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: CircleAvatar(
          radius: 35,
          child: Text(
              'K',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 30.0
                ),
              ),
          backgroundColor: Colors.redAccent,
        ),
        title: Container(
          padding: EdgeInsets.all(4),
          child: RichText(
            overflow: TextOverflow.ellipsis,
            strutStyle: StrutStyle(fontSize: 12.0),
            text: TextSpan(
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.blueAccent,
                  fontSize: 20.0
              ),
              text: 'Kemal Wibisono',
            ),
          ),
        ),
        subtitle: Container(
          padding: EdgeInsets.all(4),
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 16.0
              ),
              text: '443-79-01',
            ),
          ),
        ),
        trailing: FlatButton.icon(
            onPressed: (){
              print('go to setting');
            },
            icon: Icon(Icons.settings),
            label: Text('')),
        onTap: (){
          print('profile click');
        },
      ),
    ),
  );
}