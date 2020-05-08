import 'package:flutter/material.dart';
class ResponsiveTableBillingDetail extends StatefulWidget {
  @override
  _ResponsiveTableBillingDetailState createState() => _ResponsiveTableBillingDetailState();
}

class _ResponsiveTableBillingDetailState extends State<ResponsiveTableBillingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Biling'),
      ),
      body: Row(
          children: <Widget>[
            Expanded(child:dataTableView()),
          ]
      ),
    );
  }
}

Widget dataTableView(){
  List<DataRow> dataRow = [];
  for(int i = 0; i < 20; i++){
    dataRow.add(DataRow(cells: [
      //DataCell(Text(i.toString())),
      DataCell(Text('27-01-2020')),
      DataCell(Text('Visit-$i')),
      DataCell(Text('IDR 135,000')),
    ]));
  }
  return Container(
    padding: EdgeInsets.fromLTRB(0,8,8,8),
    child:  SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(4, 4, 0, 4),
                child: Text('Detail Tagihan')
            ),
            Card(
              elevation:3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: DataTable(
                columns: [
                  //DataColumn(label: Text('No'), numeric: true),
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Item')),
                  DataColumn(label: Text('Price')),
                ],
                rows:dataRow,
              ),
            ),
          ],
        ),
    ),
  );
}