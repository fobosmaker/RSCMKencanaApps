import 'package:blocapiapp/src/bloc/billing_bloc.dart';
import 'package:flutter/material.dart';

class WidgetCardBillingDataTable extends StatefulWidget {
  final List<DataRow> dataRow;

  WidgetCardBillingDataTable(this.dataRow);

  @override
  _WidgetCardBillingDataTableState createState() => _WidgetCardBillingDataTableState();
}

class _WidgetCardBillingDataTableState extends State<WidgetCardBillingDataTable> {

  bool isClick = false;
  final bloc = BillingBloc();
  List<DataRow> curdata = [];

  @override
  void initState() {
    print('initState: run');
    curdata = widget.dataRow;
    super.initState();
  }

  @override
  void dispose() {
    print('dispose: run');
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build state: run');
    return Container();
  }
}