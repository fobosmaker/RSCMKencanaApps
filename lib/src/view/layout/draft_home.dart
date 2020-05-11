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
      backgroundColor: Colors.grey[100],
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
            title: Text('Home', style: TextStyle(color: Colors.white),),
            //set icon on right side
            /*actions: <Widget>[
              Icon(Icons.person, color: Colors.black,),
              Icon(Icons.more_vert, color: Colors.black,),
              SizedBox(width: 10,)
            ],*/
            //flexibleSpace: FlexibleSpaceBar(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([

              //card profile pasien
              Container(padding: EdgeInsets.fromLTRB(10,10,10,20),child: cardProfile()),

              //Menu
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
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

              //Menu Edukasi
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(10,10,10,0),
                title: Container(
                  padding: EdgeInsets.all(5),
                  child: Text('Edukasi', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                ),
                subtitle: Container(
                  padding: EdgeInsets.all(5),
                  child: Text('Sharing ilmu kesehatan bersama kami', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                ),
                trailing:
                Container(
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_forward_ios,
                    ),
                    onTap: (){
                      print('More Edukasi');
                    },
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child:  Image(
                                image: AssetImage('assets/medical-billing-illustration.png'),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child:  Image(
                                    image: AssetImage('assets/medical-billing-illustration.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child:  Image(
                                    image: AssetImage('assets/medical-billing-illustration.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child:  Image(
                                    image: AssetImage('assets/medical-billing-illustration.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                  /**/
              ),

              //Menu Jadwal Dokter Kencana
              Container(padding: EdgeInsets.fromLTRB(10, 10, 0, 0), child: Text('Jadwal Dokter', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),),
              Container(padding: EdgeInsets.fromLTRB(0, 10, 0, 20), child: Container(color: Colors.blueAccent, child: Image(image: AssetImage('assets/medical-billing-illustration.png'),
                fit: BoxFit.cover,)),),

              //Menu Promo
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(10,10,10,0),
                title: Container(
                    padding: EdgeInsets.all(5),
                    child: Text('Promosi', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                ),
                subtitle: Container(
                  padding: EdgeInsets.all(5),
                  child: Text('Ikuti terus promo menarik kami', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                ),
                trailing: Container(
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                      onTap: (){
                        print('More Promosi');
                      },
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                height: 200,
                child:
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 160.0,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 160.0,
                          color: Colors.blue,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  )
              ),
            ]),
          ),
        ],
      ),
    );
  }
}