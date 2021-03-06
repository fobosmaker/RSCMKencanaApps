import 'package:blocapiapp/src/bloc/billing_bloc.dart';
import 'package:blocapiapp/src/model/billing_model.dart';
import 'package:blocapiapp/src/model/card_example_model.dart';
import 'package:blocapiapp/src/model/tab_model.dart';
import 'package:blocapiapp/src/view/widget/card_detail_billing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicViewTab extends StatefulWidget {

  final TabModel view;
  DynamicViewTab(this.view);

  @override
  _DynamicViewTabState createState() => _DynamicViewTabState();
}

class _DynamicViewTabState extends State<DynamicViewTab> {
  final bloc = BillingBloc();
  bool isClicked = false;
  bool isFinal = false;
  List<CardExample> listData =[];

  @override
  void initState() {
    listData = widget.view.data;
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return generateCard();
  }

  Widget generateCard(){
    List<Widget> list = new List<Widget>();
    for(var i = 0; i < listData.length; i++) list.add(WidgetCardDetailBilling(listData[i]));
    if(isClicked){
      list.add(StreamBuilder(
          initialData: bloc.retrieveMoreDataBilling('676033',widget.view.id,listData.length),
          stream: bloc.getmoreData,
          builder: (context, AsyncSnapshot snapshot){
            if(snapshot.connectionState == ConnectionState.active){
              //if data empty
              if(snapshot == null || !snapshot.hasData) {
                WidgetsBinding.instance.addPostFrameCallback((_){
                  setState(() {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("No data found..."),
                    ));
                    isClicked = false;
                  });
                });
              }

              //if data contains error
              if(snapshot.hasError){
                WidgetsBinding.instance.addPostFrameCallback((_){
                  setState(() {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(snapshot.error.toString()),
                    ));
                    isClicked = false;
                  });
                });
              }

              //if data success
              if(snapshot.hasData && snapshot != null){
                BillingDataMoreModel dataMoreModel = snapshot.data;
                //filter data for because there is some data in array and ind result
                List<CardExample> filterData = [];
                for(int i = 0; i < dataMoreModel.data.length; i++){
                  CardExample row = dataMoreModel.data[i];
                  bool isContain = false;
                  for(int j = 0; j < listData.length; j++){
                    CardExample source = listData[j];
                    if(source.id == row.id){
                      isContain = true;
                      break;
                    }
                  }
                  if(!isContain) filterData.add(row);
                }
                //!filter data for because there is some data in array and ind result
                WidgetsBinding.instance.addPostFrameCallback((_){
                  setState(() {
                    if(filterData.length == 0) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Data sudah semua ditampilkan"),
                      ));
                      print('udah abis datanya');
                      isClicked = false;
                      isFinal = true;
                    } else {
                      listData.addAll(filterData);
                      isClicked = false;
                    }
                  });
                });
              }
              return Container();
            } else return Center(
              child: CircularProgressIndicator(),
            );
          }
      ));
    } else {
      if(!isFinal && listData.length >= 5){
        list.add(FlatButton.icon(
              onPressed: (){
                print('${widget.view.id} - with size ${widget.view.data.length}');
                setState(() {
                  isClicked = true;
                });
              },
            icon: Icon(Icons.expand_more),
            label: Text('More')
            ));
      } else {
        list.add(Container());
      }
    }

    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: list.length,
        itemBuilder: (context, index){
          return list[index];
        },
        physics: BouncingScrollPhysics(),
      );
  }
}
