import 'package:flutter/material.dart';

class CardHome extends StatefulWidget {
  String imageAsset;
  double width;
  CardHome({this.imageAsset, this.width});
  @override
  _CardHomeState createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        color: Colors.white70,
        child: Image(
            image: AssetImage(widget.imageAsset),
            fit: BoxFit.cover
        )
    );
  }
}