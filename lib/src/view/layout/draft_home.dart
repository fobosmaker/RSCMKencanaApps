import 'package:blocapiapp/src/view/widget/card_home.dart';
import 'package:blocapiapp/src/view/widget/card_profile.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';
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
            pinned: false,
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
              Container(padding: EdgeInsets.fromLTRB(15,10,15,20),child: cardProfile()),

              //Menu
              Container(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
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
                contentPadding: EdgeInsets.fromLTRB(15,10,15,0),
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 200,
                  child:
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/edukasi1.jpeg')));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CardHome(imageAsset: 'assets/edukasi1.jpeg',width: 200)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/edukasi2.jpeg')));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CardHome(imageAsset: 'assets/edukasi2.jpeg',width: 200)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/edukasi3.jpeg')));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CardHome(imageAsset: 'assets/edukasi3.jpeg',width: 200)
                        ),
                      )
                    ],
                  )
              ),

              //Menu Jadwal Dokter Kencana
              Container(padding: EdgeInsets.fromLTRB(15, 10, 0, 0), child: Text('Jadwal Dokter', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: InkWell(
                  onTap: (){
                    print('jadwal dokter klik');
                    _launchInBrowser('https://www.rscm.co.id/index.php?XP_webview_menu=&pageid=254&title=Jadwal%20Dokter%20RSCM%20Kencana');
                  },
                  child: Stack(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/doctor-appointment.png'),
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                          left: 15,
                          top: 15,
                          child: Container(
                            width: 300,
                            height: 50,
                            //color: Colors.tealAccent,
                            child: Text(
                              'Dapatkan Jadwal Praktek Dokter RSCM Kencana',
                              style: TextStyle(
                                color: Colors.teal[400],
                                  fontSize: 17,
                                  wordSpacing: 0.5,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w300
                              )
                            )
                          )
                      )
                    ],
                  ),
                )
              ),

              //Menu Promo
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(15,10,15,0),
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
                height: 175,
                child:
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/promo1.jpeg')));
                        },
                        child:Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CardHome(imageAsset: 'assets/promo1.jpeg',width: 250)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/promo2.jpeg')));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CardHome(imageAsset: 'assets/promo2.jpeg',width: 250)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/promo3.jpeg')));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CardHome(imageAsset: 'assets/promo3.jpeg',width: 250)
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

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        //headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}

class SelectedImage extends StatelessWidget {

  String imageURL;

  SelectedImage({this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
          child: PhotoView(
            imageProvider: AssetImage(imageURL),
          )
      ),
    );
  }
}
