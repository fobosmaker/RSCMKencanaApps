import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        //color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                title: Container(
                  padding: EdgeInsets.all(4),
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    strutStyle: StrutStyle(fontSize: 12.0),
                    text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 20.0,
                      ),
                      text: 'Informasi data diri pasien',
                    ),
                  ),
                ),
                trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.teal,)
                ),
              ),
            ),
            Container(
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: CircleAvatar(
                    radius: 40,
                    child: Text(
                      'K',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 30.0
                      ),
                    ),
                    backgroundColor: Colors.teal,
                  ),
                  title: Container(
                    padding: EdgeInsets.all(4),
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      strutStyle: StrutStyle(fontSize: 12.0),
                      text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 20.0,
                            letterSpacing: 0.5
                        ),
                        text: 'Kemal Wibisono',
                      ),
                    ),
                  ),
                )
            ),
            Container(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.cake, color: Colors.grey,),
                  title: Text(
                      'Tempat tanggal lahir',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 13
                      )
                  ),
                  subtitle: Text(
                      'Jakarta, 25 Februari 1993',
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                      )
                  ),
                )
            ),
            Container(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.confirmation_number, color: Colors.grey,),
                  title: Text(
                      'Nomor rekam medik',
                      style: TextStyle(
                      color: Colors.teal,
                      fontSize: 13
                    )
                  ),
                  subtitle: Text(
                      '433-xxx-xxx',
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                      )
                  ),
                )
            ),
            Container(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.perm_identity, color: Colors.grey,),
                  title: Text(
                      'Jenis Kelamin',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 13
                      )
                  ),
                  subtitle: Text(
                      'Laki-laki',
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                      )
                  ),
                )
            ),
            Container(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.home, color: Colors.grey,),
                  title: Text(
                      'Alamat',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 13
                      )
                  ),
                  subtitle: Text(
                      'Komplek jati unggul blok a 11 no 16 harapan jaya bekasi utara Kota Bekasi',
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                      )
                  ),
                )
            ),
            Container(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  leading: Icon(Icons.phone, color: Colors.grey,),
                  title: Text(
                      'Telepon',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 13
                      )
                  ),
                  subtitle: Text(
                      '082143530880',
                      style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                      )
                  ),
                )
            ),
          ],
        ),
      )
     /* Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 40,
              child: Text(
                'K',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontSize: 30.0
                ),
              ),
              backgroundColor: Colors.teal,
            )
          ),
          Divider(
            height: 60.0,
            color: Colors.grey[100],
          ),
          Text(
            'Name: ',
            style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Unknown',
            style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'level: ',
            style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '1',
            style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'Email: ',
            style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey,
              ),
              SizedBox(width : 10.0),
              Text(
                'unknown@people.com',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 18.0,
                ),
              )
            ],
          )
        ],
      ),*/
    );
  }
}
