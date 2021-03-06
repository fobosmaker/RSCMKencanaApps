import 'package:blocapiapp/constant.dart';
import 'package:blocapiapp/src/screen/SelectedImage.dart';
import 'package:blocapiapp/src/screen/billing.dart';
import 'package:blocapiapp/src/screen/content_edukasi.dart';
import 'package:blocapiapp/src/screen/more_menu.dart';
import 'package:blocapiapp/src/screen/page_under_construction.dart';
import 'package:blocapiapp/src/view/widget/card_home.dart';
import 'package:blocapiapp/src/view/widget/card_profile.dart';
import 'package:blocapiapp/src/view/widget/circle_button_menu_home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class VerticalLayoutDraftHome extends StatefulWidget {

  final String medicalRecordNumber;
  final String name;
  VerticalLayoutDraftHome(this.medicalRecordNumber, this.name);

  @override
  _VerticalLayoutDraftHomeState createState() => _VerticalLayoutDraftHomeState();

}

class _VerticalLayoutDraftHomeState extends State<VerticalLayoutDraftHome> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build view');
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: defaultAppbarColor,
            floating: false,
            snap: false,
            pinned: true,
            //set icon on left side
            leading: Container(),
            //expandedHeight: 200,
            centerTitle: true,
            //title on appbar
            title: Container(
                padding: EdgeInsets.all(4),
                height: 37,
                width: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/rscm_kencana_logo.jpg'),
                      fit: BoxFit.fill
                  ),
                )
            ),
            //set icon on right side
            actions: <Widget>[
              InkWell(
                  child: Icon(Icons.more_vert, color: defaultAppbarContentColor),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MoreMenuPage()));
                  },
              ),
              SizedBox(width: 15)
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([

              //card profile pasien
              Container(
                  padding: EdgeInsets.fromLTRB(0,0,0,5),
                  child: CardProfile(widget.medicalRecordNumber, widget.name)
              ),

              //Menu
              Container(
                padding: EdgeInsets.fromLTRB(15, 30, 15, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleButtonMenuHome(title: 'Tagihan', color: Colors.lightBlueAccent, icon: Icons.receipt, onclick: () => Navigator.pushNamed(context,'/billing')),
                    CircleButtonMenuHome(title: 'Diet Pasien', color: Colors.redAccent, icon: Icons.restaurant_menu, onclick: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => PageUnderConstruction())); }),
                    CircleButtonMenuHome(title: 'Gerai', color: Colors.orangeAccent, icon: Icons.fastfood, onclick: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => PageUnderConstruction())); }),
                  ],
                ),
              ),

              //Menu Edukasi
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(15,10,15,0),
                title: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  child: Text('Edukasi', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                ),
                subtitle: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text('Sharing ilmu kesehatan bersama kami', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                ),
                trailing: Container(
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: defaultAppbarColor,
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute( builder: (context) => ContentEdukasiPage() ));
                    },
                  )
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 20),
                  height: 150,
                  child:
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/edukasi7.jpeg')));
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,10,0),
                          child: CardHome(imageAsset: 'assets/edukasi7.jpeg',width: 150)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/edukasi8.jpeg')));
                        },
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                            child: CardHome(imageAsset: 'assets/edukasi8.jpeg',width: 150)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/edukasi9.jpeg')));
                        },
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                            child: CardHome(imageAsset: 'assets/edukasi9.jpeg',width: 150)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/edukasi10.jpeg')));
                        },
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                            child: CardHome(imageAsset: 'assets/edukasi10.jpeg',width: 150)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedImage(imageURL: 'assets/edukasi11.jpeg')));
                        },
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                            child: CardHome(imageAsset: 'assets/edukasi11.jpeg',width: 150)
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute( builder: (context) => ContentEdukasiPage() ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5,0,15,0),
                          child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: defaultAppbarColor,
                              ),
                              child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.arrow_forward, color: Colors.white),
                                Container(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                    child: Text(
                                      'Lihat lebih banyak',
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.white),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
              ),

              //Menu Jadwal Dokter Kencana
              Container(padding: EdgeInsets.fromLTRB(15, 20, 0, 5), child: Text('Jadwal Dokter', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),),
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
                contentPadding: EdgeInsets.fromLTRB(15,20,15,0),
                title: Container(
                    padding: EdgeInsets.all(5),
                    child: Text('Promosi', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(left:5, bottom: 5),
                  child: Text('Ikuti terus promo menarik kami', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                ),
                /*trailing: Container(
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: defaultAppbarColor,
                      ),
                      onTap: (){
                        print('More Promosi');
                      },
                    )
                ),*/
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 5, 0, 20),
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
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
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
                            padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
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
