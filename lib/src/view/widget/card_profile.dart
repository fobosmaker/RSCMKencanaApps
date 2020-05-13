import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget cardProfile(){
  return Container(
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: CircleAvatar(
          radius: 40,
          child: Text(
              'K',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 30.0
                ),
              ),
          backgroundColor: Colors.teal,
        ),
        title: Container(
          padding: EdgeInsets.all(4),
          child: RichText(
            overflow: TextOverflow.ellipsis,
            strutStyle: StrutStyle(fontSize: 12.0),
            text: TextSpan(
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
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
        trailing: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.settings)
        ),
        onTap: (){
          print('profile click');
        },
      ),
    );
}