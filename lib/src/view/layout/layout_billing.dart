import 'package:blocapiapp/src/model/billing_model.dart';
import 'package:blocapiapp/src/model/card_example_model.dart';
import 'package:blocapiapp/src/model/tab_model.dart';
import 'package:blocapiapp/src/view/widget/card_billing_status.dart';
import 'package:blocapiapp/src/view/widget/card_billing_with_detail.dart';
import 'package:blocapiapp/src/view/widget/circle_point_detail_billing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import 'dynamic_view_tab.dart';

class VerticalLayoutBilling extends StatefulWidget {

  final BillingModel data;

  VerticalLayoutBilling(this.data);

  @override
  _VerticalLayoutBillingState createState() => _VerticalLayoutBillingState();
}

class _VerticalLayoutBillingState extends State<VerticalLayoutBilling> with SingleTickerProviderStateMixin {

  TabController controller;
  NumberFormat formatter = new NumberFormat("#,###");

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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Tagihan', style: TextStyle(color: Colors.white)),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, isScrolled){
            return <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(padding: EdgeInsets.fromLTRB(15, 20, 0, 0), child: Text('Rangkuman', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),),
                  Container(padding: EdgeInsets.fromLTRB(15, 10, 0, 10), child: Text('Poin-poin infromasi mengenai tagihan anda', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  CirclePointDetailBilling(title: 'Total', content: 'Rp ${formatter.format(int.parse(widget.data.data.totalSummary))}', icon: Icons.receipt, color: Colors.blueAccent),
                                  CirclePointDetailBilling(title: 'Deposit', content: 'Rp ${formatter.format(int.parse(widget.data.data.totalDeposit))}', icon: Icons.arrow_upward, color: Colors.greenAccent),
                                  CirclePointDetailBilling(title: 'Tagihan', content: 'Rp ${formatter.format(int.parse(widget.data.data.totalTagihan))}', icon: Icons.arrow_downward, color: Colors.deepOrangeAccent),
                                ],
                              ),
                            ),
                            Container(
                                child: ExpansionTile(
                                  title: Text('More detail'),
                                  children: <Widget>[
                                    WidgetCardBillingDetail(widget.data.data.tab, widget.data.data.totalSummary),
                                  ],
                                )
                            ),
                          ],
                        )
                    ),
                  ),
                  Container(padding: EdgeInsets.fromLTRB(15, 20, 0, 0), child: Text('Detail Tagihan', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),),
                  Container(padding: EdgeInsets.fromLTRB(15, 10, 0, 10), child: Text('Rincian detil dari poin-poin informasi tagihan anda', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),),
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
