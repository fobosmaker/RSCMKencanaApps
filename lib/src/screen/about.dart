import 'package:flutter/material.dart';
class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.teal,
            floating: false,
            snap: false,
            pinned: true,
            //set icon on left side
            leading: InkWell(
                child: Icon(Icons.arrow_back, color:Colors.white),
              onTap: (){
                  Navigator.pop(context);
              },
            ),
            expandedHeight: 200,
            centerTitle: true,
            //title on appbar
            title: Text('Tentang RSCM Kencana', style: TextStyle(color: Colors.white),),
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/medical-billing-illustration.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              /*Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ListTile(
                  title: Text(
                      'Sejarah',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 15
                      )
                  ),
                  subtitle: Text(
                      'mulai beroperasi pada tanggal 7 Mei 2010 diresmikan oleh Menteri Kesehatan RI dr. Endang Rahayu Sedyaningsih MPH, Ph.D yang berfungsi mengantisipasi tantangan mutu pelayanan kesehatan rumah sakit kelas dunia.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w300
                      )
                  ),
                ),
              ),*/
              
              Card(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: ExpansionTile(
                    title: Text('Sejarah',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.teal)),
                    children: <Widget>[
                      Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 10), child: Text('RSCM Kencana mulai beroperasi pada tanggal 7 Mei 2010 diresmikan oleh Menteri Kesehatan RI dr. Endang Rahayu Sedyaningsih MPH, Ph.D yang berfungsi mengantisipasi tantangan mutu pelayanan kesehatan rumah sakit kelas dunia.', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300, letterSpacing: 0.5))),
                      Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 10), child: Text('Kini masyarakat Indonesia memiliki kesempatan untuk berobat yang kualitasnya bisa disetarakan dengan rumah sakit di luar negeri. RSCM Kencana yang memiliki 71 kamar tidur yang terdiri dari kamar VIP, VVIP, suite room dan president suite yang terletak di Jl. Diponegoro No 71, Jakarta Pusat. Letaknya sangat strategis dan mudah diakses, serta memiliki area parkir yang luas dan didukung dengan tersedianya fasilitas tower parking yang mampu menampung 96 kendaraan. Pelayanan RSCM Kencana yang terintegrasi dalam cluster - cluster yang tersedia, menjawab harapan masyarakat akan kenyamanan dan pelayanan yang bermutu.', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300, letterSpacing: 0.5,),),),
                      Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 10), child: Text('Harapan dari pemerintah terhadap RSCM Kencana adalah untuk meningkatkan daya saing pelayanan kesehatan Indonesia di kawasan Asia. RSCM Kencana merupakan rumah sakit di bawah Kementerian Kesehatan RI yang menawarkan konsep pelayanan kesehatan terintegrasi bertaraf internasional. Hadirnya RSCM Kencana memberikan nuansa baru tentang teknologi kesehatan yang semakin canggih, dimana sebelumnya masyarakat kebanyakan menjatuhkan pilihan pada pelayanan rumah sakit di luar negeri. Seiring berjalannya waktu, diharapkan RSCM Kencana dapat terus menjadi pilihan masyarakat Indonesia dalam pemenuhan kebutuhan pelayanan kesehatannya.', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300, letterSpacing: 0.5),),),
                    ],
                  ),
                ),
              ),
              /*Container(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: ExpansionTile(
                  title: Text('Visi',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.teal)),
                  children: <Widget>[
                    Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 10), child: Text('Memberi layanan kesehatan berkelas internasional melalui pengalaman luar biasa (melebihi harapan) untuk pelanggan', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300, letterSpacing: 0.5))),
                    ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: ExpansionTile(
                  title: Text('Misi',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.teal)),
                  children: <Widget>[
                    Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 10), child: Text('Menyelenggarakan pelayanan kesehatan yang melebihi harapan pelanggan oleh tim medis dengan reputasi internasional.', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300, letterSpacing: 0.5))),
                    Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 10), child: Text('Menyediakan lahan untuk kegiatan pendidikan Sp2 dan penelitian yang terintegrasi.', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300, letterSpacing: 0.5))),
                    Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 10), child: Text('Mengimplementasikan sistem organisasi dan manajemen terbaik untuk mewujudkan tempat kerja yang terbaik.', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300, letterSpacing: 0.5))),
                  ],
                ),
              ),*/
              Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(padding: EdgeInsets.fromLTRB(15, 20, 15, 0), child: Text('Visi', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.teal))),
                      Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 20), child: Text('Memberi layanan kesehatan berkelas internasional melalui pengalaman luar biasa (melebihi harapan) untuk pelanggan', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300, letterSpacing: 0.5),),),
                    ],
                  )
              ),
              Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(padding: EdgeInsets.fromLTRB(15, 20, 15, 0), child: Text('Misi', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.teal))),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                        child: ListTile(
                          //contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          leading: Text('1.'),
                          title: Text(
                              'Menyelenggarakan pelayanan kesehatan yang melebihi harapan pelanggan oleh tim medis dengan reputasi internasional.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  letterSpacing: 0.5
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                        child: ListTile(
                          //contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          leading: Text('2.'),
                          title: Text(
                              'Menyediakan lahan untuk kegiatan pendidikan Sp2 dan penelitian yang terintegrasi.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  letterSpacing: 0.5
                              )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                        child: ListTile(
                          //contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          leading: Text('3.'),
                          title: Text(
                              'Mengimplementasikan sistem organisasi dan manajemen terbaik untuk mewujudkan tempat kerja yang terbaik.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  letterSpacing: 0.5
                              )
                          ),
                        ),
                      ),
                    ],
                  )
              ),



             /* Container(padding: EdgeInsets.fromLTRB(15, 20, 15, 0), child: Text('Misi', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.teal))),
              Container(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                child: ListTile(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Text('1.'),
                  title: Text(
                      'Menyelenggarakan pelayanan kesehatan yang melebihi harapan pelanggan oleh tim medis dengan reputasi internasional.',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          letterSpacing: 0.5
                      )
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                child: ListTile(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Text('2.'),
                  title: Text(
                      'Menyediakan lahan untuk kegiatan pendidikan Sp2 dan penelitian yang terintegrasi.',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          letterSpacing: 0.5
                      )
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                child: ListTile(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Text('3.'),
                  title: Text(
                      'Mengimplementasikan sistem organisasi dan manajemen terbaik untuk mewujudkan tempat kerja yang terbaik.',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          letterSpacing: 0.5
                      )
                  ),
                ),
              ),*/

              /*Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 10), child: Text('Kini masyarakat Indonesia memiliki kesempatan untuk berobat yang kualitasnya bisa disetarakan dengan rumah sakit di luar negeri. RSCM Kencana yang memiliki 71 kamar tidur yang terdiri dari kamar VIP, VVIP, suite room dan president suite yang terletak di Jl. Diponegoro No 71, Jakarta Pusat. Letaknya sangat strategis dan mudah diakses, serta memiliki area parkir yang luas dan didukung dengan tersedianya fasilitas tower parking yang mampu menampung 96 kendaraan. Pelayanan RSCM Kencana yang terintegrasi dalam cluster - cluster yang tersedia, menjawab harapan masyarakat akan kenyamanan dan pelayanan yang bermutu.', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),),
              Container(padding: EdgeInsets.fromLTRB(15, 10, 15, 10), child: Text('Harapan dari pemerintah terhadap RSCM Kencana adalah untuk meningkatkan daya saing pelayanan kesehatan Indonesia di kawasan Asia. RSCM Kencana merupakan rumah sakit di bawah Kementerian Kesehatan RI yang menawarkan konsep pelayanan kesehatan terintegrasi bertaraf internasional. Hadirnya RSCM Kencana memberikan nuansa baru tentang teknologi kesehatan yang semakin canggih, dimana sebelumnya masyarakat kebanyakan menjatuhkan pilihan pada pelayanan rumah sakit di luar negeri. Seiring berjalannya waktu, diharapkan RSCM Kencana dapat terus menjadi pilihan masyarakat Indonesia dalam pemenuhan kebutuhan pelayanan kesehatannya.', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),),
*/
/*
              Container(padding: EdgeInsets.fromLTRB(10, 20, 0, 0), child: Text('Rangkuman Tagihan', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),),
              Container(padding: EdgeInsets.fromLTRB(10, 10, 0, 10), child: Text('Poin-poin infromasi mengenai tagihan anda', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),),
              Container(
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
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: Icon(Icons.receipt, color: Colors.white,),
                                  ),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                      child: Text(
                                        'Total',
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                                      )
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                      'Rp 250000',
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: Icon(Icons.arrow_drop_up, color: Colors.white,),
                                  ),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                      child: Text(
                                        'Deposit',
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                                      )
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                      'Rp 250000',
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: Icon(Icons.arrow_drop_down, color: Colors.white,),
                                  ),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                      child: Text(
                                        'Tagihan',
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                                      )
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                      'Rp 250000',
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ),
              Container(padding: EdgeInsets.fromLTRB(10, 20, 0, 0), child: Text('Detail Tagihan', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),),
              Container(padding: EdgeInsets.fromLTRB(10, 10, 0, 10), child: Text('Rincian detil dari poin-poin informasi tagihan anda', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),),
            */
            ]),
          ),
        ],
      ),
    );
  }
}
