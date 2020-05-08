class LoginModel{
  String statusCode;
  String message;
  LoginDataModel data;
  LoginModel({this.statusCode, this.message, this.data});
}

class LoginDataModel{
  String patient_id;
  String mrn;
  String patient_nm;
  LoginDataModel({this.patient_id, this.mrn, this.patient_nm});
}