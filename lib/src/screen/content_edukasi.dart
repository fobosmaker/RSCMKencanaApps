import 'package:flutter/material.dart';

class ContentEdukasiPage extends StatefulWidget {
  @override
  _ContentEdukasiPageState createState() => _ContentEdukasiPageState();
}

class _ContentEdukasiPageState extends State<ContentEdukasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content'),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Image(
            image: AssetImage('assets/education2.png'),
            height:250,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                  'Mauris non tortor ipsu praesant ipsum libero',
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 24,
                  fontWeight: FontWeight.w800
                ),
              ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Text(
              'Alexander Pierce',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 12,
                  fontWeight: FontWeight.w300
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}