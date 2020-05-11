import 'package:blocapiapp/src/model/billing_model.dart';
import 'package:blocapiapp/src/model/card_example_model.dart';
import 'package:blocapiapp/src/model/tab_model.dart';
import 'package:blocapiapp/src/view/widget/card_billing_status.dart';
import 'package:blocapiapp/src/view/widget/card_billing_with_detail.dart';
import 'package:blocapiapp/src/view/widget/card_detail_billing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'dynamic_view_tab.dart';

class VerticalLayoutBilling extends StatefulWidget {

  final BillingModel data;

  VerticalLayoutBilling(this.data);

  @override
  _VerticalLayoutBillingState createState() => _VerticalLayoutBillingState();
}

class _VerticalLayoutBillingState extends State<VerticalLayoutBilling> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: widget.data.data.tab.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          //controller: ,
          headerSliverBuilder: (context, isScrolled){
            return <Widget>[
              SliverAppBar(
                //backgroundColor: Colors.grey,
                floating: false,
                snap: false,
                pinned: true,
                //set icon on left side
                leading: Icon(Icons.arrow_back, color:Colors.white),
                //title on appbar
                title: Text('Tagihan', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                //set icon on right side
                /*actions: <Widget>[
              Icon(Icons.person, color: Colors.black,),
              Icon(Icons.more_vert, color: Colors.black,),
              SizedBox(width: 10,)
            ],*/
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(padding: EdgeInsets.all(10), child: Text('Rangkuman:'),),
                  WidgetCardBillingDetail(widget.data.data.tab, widget.data.data.totalSummary),
                  WidgetCardBillingStatus(widget.data.data.totalDeposit,widget.data.data.totalTagihan),
                  Container(padding: EdgeInsets.all(10), color: Colors.white, child: Text('Detail Tagihan:'),),
                ]),
              ),
              SliverPersistentHeader(
                delegate:_SliverAppBarDelegate(
                    TabBar(
                      isScrollable: true,
                      controller: controller,
                      tabs: generateTabHeader(widget.data.data.tab),
                      indicatorColor: Colors.red,
                    )
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
              controller: controller,
              children: generateTabView(widget.data.data.tab),
            ),
      ),
    );
  }

  List<Widget> generateTabHeader(List<TabModel> dataTabModel){
    List<Widget> widget = [];
    for(int i = 0; i < dataTabModel.length; i++){
      widget.add(Tab(
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            dataTabModel[i].content,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14
            ),
          ),
        ),
      ));
    }
    return widget;
  }

  List<Widget> generateTabView(List<TabModel> dataTabModel ){
    List<Widget> widget = [];
    for(int i = 0; i < dataTabModel.length; i++){
      widget.add(DynamicViewTab(dataTabModel[i]));
    }
    return widget;
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.white,
      child: _tabBar,
      //margin: EdgeInsets.symmetric(vertical: _tabBar.preferredSize.height, horizontal: 0),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return _tabBar != oldDelegate._tabBar;
  }

}


class HorizontalLayoutBilling extends StatefulWidget {

  final BillingModel data;

  HorizontalLayoutBilling(this.data);

  @override
  _HorizontalLayoutBillingState createState() => _HorizontalLayoutBillingState();
}

class _HorizontalLayoutBillingState extends State<HorizontalLayoutBilling> with SingleTickerProviderStateMixin {

  TabController controller;
  List<TabModel> dataTabModel = [];

  @override
  void initState() {
    /*for(int i = 1; i <= 5; i++){
      dataTabModel.add(new TabModel(id: i, content: 'Cluster $i', data: generateData(i), total: 50000));
    }*/
    controller = new TabController(length: dataTabModel.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tagihan'),),
      body: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child:  CustomScrollView(
                  slivers: <Widget>[
                    SliverList(
                      delegate: SliverChildListDelegate([
                        Container(padding: EdgeInsets.all(10), child: Text('Rangkuman:'),),
                        WidgetCardBillingDetail(widget.data.data.tab, widget.data.data.totalSummary),
                        WidgetCardBillingStatus(widget.data.data.totalDeposit,widget.data.data.totalTagihan),
                        //Container(padding: EdgeInsets.all(10), child: Text('Detail Tagihan:'),),
                      ]),
                    ),
                  ],
                ),
            ),
            Expanded(
              flex:1,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate([
                      // Container(padding: EdgeInsets.all(10), child: Text('Rangkuman:'),),
                      // WidgetCardBillingDetail(dataTabModel),
                      //WidgetCardBillingStatus(widget.data.paid,widget.data.unpaid),
                      Container(padding: EdgeInsets.all(10), child: Text('Detail Tagihan:'),),
                    ]),
                  ),
                   SliverPersistentHeader(
                      delegate:_SliverAppBarDelegate(
                          TabBar(
                            isScrollable: true,
                            controller: controller,
                            tabs: generateTabHeader(),
                            indicatorColor: Colors.red,
                          )
                      ),
                      pinned: true,
                    ),
                    SliverFillRemaining(
                      child: TabBarView(
                        controller: controller,
                        children: generateTabView(),
                      ),
                    ),
                ],
              )
            )
          ]
      ),
    );
  }

  List<Widget> generateTabHeader(){
    List<Widget> widget = [];
    for(int i = 0; i < dataTabModel.length; i++){
      widget.add(Tab(
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            dataTabModel[i].content,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14
            ),
          ),
        ),
      ));
    }
    return widget;
  }
  List<Widget> generateTabView(){
    List<Widget> widget = [];
    for(int i = 0; i < dataTabModel.length; i++){
      //widget.add(SingleChildScrollView(child: DynamicViewTab(dataTabModel[i]), scrollDirection: Axis.vertical,));
      widget.add(DynamicViewTab(dataTabModel[i]));

    }
    return widget;
  }
  List<CardExample> generateData(int limit){
    List<CardExample> list = [];
    for(var i = 1; i <= limit; i++){
      list.add(new CardExample(title: 'Content $i', description: 'Lorem ipsum dolor sir amet', price: '350000',date: '27-07-02'));
    }
    return list;
  }
}
