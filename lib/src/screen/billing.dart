import 'package:blocapiapp/src/bloc/billing_bloc.dart';
import 'package:blocapiapp/src/screen/page_500.dart';
import 'package:blocapiapp/src/screen/page_no_data.dart';
import 'package:blocapiapp/src/screen/shared_preferences.dart';
import 'package:blocapiapp/src/view/layout/draft_home.dart';
import 'package:blocapiapp/src/view/layout/draft_layout_billing.dart';
import 'package:blocapiapp/src/view/layout/layout_billing.dart';
import 'package:blocapiapp/src/view/widget/widget_no_data.dart';
import 'package:flutter/material.dart';

class BillingPage extends StatefulWidget {
  @override
  _BillingPageState createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = new GlobalKey<RefreshIndicatorState>();
  final bloc = BillingBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  Future<Null> refresh() async {
    print('refresh run');
  }



  @override
  Widget build(BuildContext context) {

    //check user session
    new MySharedPreferences(context: context).checkBoolean();

    //String id_pasien
    String patientId = "676033";

    //if user login
    return Scaffold(
      body: StreamBuilder(
          initialData: bloc.fetchDataBilling(patientId),
          stream: bloc.dataBilling,
          builder: (context,AsyncSnapshot snapshot){
            if(snapshot.connectionState == ConnectionState.active){

              //if error come from API
              if(snapshot.hasError){
                print(snapshot.error.toString());
                return Page500();
              }

              //if there is no data
              else if(!snapshot.hasData || snapshot.data == null){
                print(snapshot.error.toString());
                return  WidgetNoData(title: "Data tidak ditemukan", subtitle: "Kami tidak dapat menemukan tagihan anda");
              }

              //default return generate widget
              else {
                return generateWidget(snapshot.data);
              }
            }
            //default run circular progress
            return Center(child: CircularProgressIndicator());
          })
    );
  }

  Widget generateWidget(data){
    return OrientationBuilder(builder: (context, orientation) {
      //Sesuai figma
      return MediaQuery.of(context).size.width > 500 ? HorizontalLayoutBilling(data) : VerticalLayoutBilling(data);

      //Draft
      //return MediaQuery.of(context).size.width > 500 ? HorizontalLayoutDraftBilling(data) : VerticalLayoutDraftBilling(data);

      //draft home
      //return VerticalLayoutDraftHome();
    });
  }
}