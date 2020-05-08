import 'package:blocapiapp/src/view/widget/card_profile.dart';
import 'package:flutter/material.dart';
class VerticalLayoutDraftHome extends StatefulWidget {
  @override
  _VerticalLayoutDraftHomeState createState() => _VerticalLayoutDraftHomeState();
}

class _VerticalLayoutDraftHomeState extends State<VerticalLayoutDraftHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //backgroundColor: Colors.grey,
            floating: false,
            snap: false,
            pinned: true,
            //set icon on left side
            //leading: Icon(Icons.arrow_back, color:Colors.white),
            //expandedHeight: 200,
            //centerTitle: true,
            //title on appbar
            title: Text('home', style: TextStyle(color: Colors.white),),
            //set icon on right side
            /*actions: <Widget>[
              Icon(Icons.person, color: Colors.black,),
              Icon(Icons.more_vert, color: Colors.black,),
              SizedBox(width: 10,)
            ],*/
            flexibleSpace: FlexibleSpaceBar(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              //card profile pasien
              Container(padding: EdgeInsets.fromLTRB(0, 20, 0, 10),child: cardProfile()),
              //menu
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.purpleAccent,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Icon(Icons.receipt, color: Colors.white,),
                          ),
                          onTap: (){
                            print('Tagihan Clicked!');
                          },
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            child: Text(
                              'Tagihan',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                            )
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.tealAccent,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Icon(Icons.restaurant_menu, color: Colors.white,),
                          ),
                          onTap: (){
                            print('Diet Pasien Clicked');
                          },
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            child: Text(
                              'Diet Pasien',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                            )
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Icon(Icons.fastfood, color: Colors.white,),
                          ),
                          onTap: (){
                            print('Gerai Clicked');
                          },
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            child: Text(
                              'Gerai',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(padding: EdgeInsets.fromLTRB(10, 20, 0, 0), child: Text('Edukasi', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),),
              Container(padding: EdgeInsets.fromLTRB(10, 5, 0, 0), child: Text('Sharing ilmu kesehatan bersama kami', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),),
              Container(padding: EdgeInsets.fromLTRB(10, 5, 10, 0), child: Container(color: Colors.teal, height: 200,child: Center(child: Text('Konten Edukasi'))),),

              Container(padding: EdgeInsets.fromLTRB(10, 20, 0, 0), child: Text('Promosi', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),),
              Container(padding: EdgeInsets.fromLTRB(10, 5, 0, 0), child: Text('Ikuti terus promo menarik kami', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),),
              Container(padding: EdgeInsets.fromLTRB(10, 5, 10, 20), child: Container(color: Colors.pinkAccent, height: 200,child: Center(child: Text('Konten Promosi'))),),
            ]),
          ),
          /*SliverPersistentHeader(
            delegate:_SliverAppBarDelegate(
                TabBar(
                  isScrollable: true,
                  controller: controller,
                  tabs: generateTabHeader(widget.data.tab),
                  indicatorColor: Colors.red,
                )
            ),
            pinned: true,
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: generateTabView(widget.data.tab),
            ),
          ),*/
        ],
      ),
    );
  }
}
