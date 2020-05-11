import 'package:blocapiapp/src/screen/billing.dart';
import 'package:blocapiapp/src/screen/home.dart';
import 'package:blocapiapp/src/screen/login.dart';
import 'package:blocapiapp/src/view/coba_tabbar.dart';
import 'package:blocapiapp/src/view/layout/layout_billing.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/billing': (context) => BillingPage(),
    '/dev': (context) => CobaTabBar(),
  },
));
/*void main() => runApp(MyApp());
String tesOnClick(){
  return 'click from main dart';
}
void loginTenant(){
  print('move to login tenant');
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: layoutLogin(),
      //home: layoutBilling()
    );
  }

  void tesOnClick(){
    print('click from main dart');
  }
}*/

/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<UserModel> list = [];
  @override
  void initState() {
    for(int i = 1; i < 10; i++){
      list.add(UserModel(id: i, name: 'name $i', username: 'username $i', email: 'email_$i@gmail.com'));
    }
    bloc.fetchDataFromMultiProvider();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoc API'),
      ),
      body: StreamBuilder(
        stream: bloc.multiProviderData,
        builder: (context, AsyncSnapshot<dynamic> snapshot){
          if(snapshot.hasData){
            //return buildList(snapshot);
            if(snapshot.data.statusCode == 200){
              List<Widget> listView = [];
              //listView.add(Text(snapshot.data.statusCode.toString()));
              listView.add(Text('Menu 1'));
              listView.add(userCardHorizontalView());
              listView.add(SizedBox(height: 10,));
              listView.add(Text('Menu 2'));
              listView.add(userCardHorizontalView());
              listView.add(SizedBox(height: 10,));
              listView.add(Text('Menu 4'));
              listView.add(userCardHorizontalView());
              listView.add(SizedBox(height: 10,));
              listView.add(Text('Menu 5'));
              listView.add(userCardHorizontalView());
              listView.add(SizedBox(height: 10,));
              listView.add(Text('Menu 5'));
              listView.add(userCardHorizontalView());
              listView.add(SizedBox(height: 10,));
              return mainView(listView);
            } else {
              return Text(snapshot.data.message);
            }
          } else if (snapshot.hasError) return Text(snapshot.error.toString());
          else  return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
    );
  }

  Widget mainView(List<Widget> view){
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: view.length,
        itemBuilder: (_, int index){
          return view[index];
        }
    );
  }

  Widget forMenu1(String data){
    return Text(data);
  }

  Widget forMenu2(String data){
    return Text(
      data,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget buildList(List<UserModel> snapshot){
    return Column(
      children: <Widget>[
        Text('List User'),

        FlatButton.icon(
          onPressed: (){},
          icon : Icon(Icons.keyboard_arrow_down),
          label: Text('View more'),
        )
      ],
    );
  }

  Widget userCardHorizontalView(){
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) => Container(
            margin: EdgeInsets.all(12),
            height: 100,
            width: 200,
          child: Card(
            child: Center(child: Text('${list[index].id}. ${list[index].name}')),
          ),
        ),
      ),
    );
  }
}*/
