import 'package:flutter/material.dart';

class WidgetNoData extends StatefulWidget {

  final String title;
  final String subtitle;

  WidgetNoData({this.title, this.subtitle});

  @override
  _WidgetNoDataState createState() => _WidgetNoDataState();
}

class _WidgetNoDataState extends State<WidgetNoData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/no_data.png'),
            fit: BoxFit.cover,
          ),
        ),
        Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
                widget.title,
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
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
                widget.subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    wordSpacing: 1,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w200
                )
            )
        ),
      ],
    );
  }
}


/*class WidgetNoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/no_data.png'),
            fit: BoxFit.cover,
          ),
        ),
        Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 75),
            child: Text(
                'No data found',
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
                'Youre data is empty',
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
            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.refresh, color: defaultAppbarColor,), label: Text('Refresh', style: TextStyle(
                color: defaultAppbarColor)))
        )
      ],
    );
  }
}*/
