import 'package:blocapiapp/src/model/billing_model.dart';
import 'package:blocapiapp/src/model/card_example_model.dart';
import 'package:blocapiapp/src/model/login_model.dart';
import 'package:blocapiapp/src/model/user_model.dart';
import 'package:blocapiapp/src/model/user_post_model.dart';
import 'package:blocapiapp/src/provider/billing_provider.dart';
import 'package:blocapiapp/src/provider/user_provider.dart';
import 'package:flutter/material.dart';

class Repository{
  static final userAPIProvider = UserProvider();
  static final billingAPIProvider = BillingProvider();

/*USER API*/
  //GET FROM API
  Future<List<UserModel>> fetch_user_model() => userAPIProvider.fetchUser();
  Future<List<UserPostModel>> fetch_user_post_model() => userAPIProvider.fetchUsersPost();
  Future<List<dynamic>> fetch_multi_provider() => userAPIProvider.getData();
  Future<dynamic> fetch_data_multi_provider() => userAPIProvider.getMultiProvider();

  //POST TO API
  Future addSave(String str) => userAPIProvider.addSave(str);

  //LOGIN
  Future<LoginModel> login(String username, String password) => userAPIProvider.login(username,password);
/*!USER API*/

/*BILLING API*/
  //Get data billing
  Future<BillingModel> fetchDataBilling(String patientId) => billingAPIProvider.getDataBilling(patientId);
  //Get more data on card
  Future<BillingDataMoreModel> fetchcard(String patientId, String orgId, int totalData) => billingAPIProvider.getMoreBillingDetail(patientId, orgId, totalData);
/*!BILLING API*/
}