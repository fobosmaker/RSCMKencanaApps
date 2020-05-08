import 'dart:convert';
import 'dart:io';
//import 'dart:math';
import 'package:blocapiapp/src/model/billing_model.dart';
import 'package:blocapiapp/src/model/card_example_model.dart';
import 'package:blocapiapp/src/model/tab_model.dart';
//import 'package:flutter/material.dart';
//import 'package:http/http.dart' show Client, Response;
class BillingProvider{
  Future<BillingModel> getDataBilling(String patient_id) async {
    String url = 'https://www.rscm.co.id/apirscm/kencana.php';
    Map map = {
      "user_nm":"UMSI",
      "key":"091ae7a29c4795860f69b4077e8b432c",
      //"patient_id":"68485",
      "patient_id":patient_id,
      "fungsi":"getBilling"
    };
    var body = json.encode(map);
    HttpClient clientReq = new HttpClient();
    clientReq.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
    try{
      HttpClientRequest req = await clientReq.postUrl(Uri.parse(url));
      req.headers.set('content-type', 'application/json');
      req.add(utf8.encode(body));
      HttpClientResponse response = await req.close();
      String reply = await response.transform(utf8.decoder).join();
      return new BillingModel(statusCode: jsonDecode(reply)['statusCode'], message: jsonDecode(reply)['message'],  data: convertGetBillingData(jsonDecode(reply)['data']) );
    } catch (e){
      //return new BillingModel(statusCode: "500", message: e.toString(), data: null);
      throw Exception(e);
    }
  }

  BillingDataModel convertGetBillingData(var data){
    List<dynamic> tab = data['tab']; //setara tab
    List<TabModel> listTab = [];
    for(int i = 0; i < tab.length; i++){
      var row = tab[i];
      listTab.add(new TabModel(id: row['org_id'], content: row['org_nm'], total: row['total'], data:getBillingDetail(row['detail']) ));
    }
    //print('item tab: ${listTab.length}');
    return new BillingDataModel(totalSummary: data['totalSummary'],totalDeposit: data['totalDeposit'], totalTagihan: data['totalTagihan'],tab: listTab);
  }
  
  List<CardExample> getBillingDetail(List<dynamic> detail){
    List<CardExample> listDetail = [];
    for(int j = 0; j < detail.length; j++){
      var row = detail[j];
      //print(row2['item_nm']);
      listDetail.add(new CardExample(id: row['item_id'], title: row['item_nm'],date: row['item_dttm'], description: row['item_desc'], price: row['tariff']));
    }
    return listDetail;
  }

  Future<BillingDataMoreModel> getMoreBillingDetail(String patientId, String orgId, int totalData) async{
    String url = 'https://www.rscm.co.id/apirscm/kencana.php';
    Map map = {
      "user_nm":"UMSI",
      "key":"091ae7a29c4795860f69b4077e8b432c",
      //"patient_id":"68485",
      //"org_id":"1107",
      //"record":5,
      "patient_id":patientId,
      "org_id":orgId,
      "record":totalData,
      "fungsi":"getLoadMore"
    };
    var body = json.encode(map);
    HttpClient clientReq = new HttpClient();
    clientReq.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
    try{
      HttpClientRequest req = await clientReq.postUrl(Uri.parse(url));
      req.headers.set('content-type', 'application/json');
      req.add(utf8.encode(body));
      HttpClientResponse response = await req.close();
      String reply = await response.transform(utf8.decoder).join();
      List<CardExample> data = getBillingDetail(jsonDecode(reply)['data']);
      print('getMoreBillingDetail: ${data.length}');
      return new BillingDataMoreModel(statusCode: jsonDecode(reply)['statusCode'], message: jsonDecode(reply)['message'],  data: getBillingDetail(jsonDecode(reply)['data']) );
    } catch (e){
      throw Exception(e);
    }
  }
}