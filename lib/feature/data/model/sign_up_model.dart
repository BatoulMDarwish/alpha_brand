class SetUserModel{
  Result? result;
  String? errorMessage;

  SetUserModel.fromJson(Map<String, dynamic> json) {
    result =
    json['result'] != null ? Result.fromJson(json['result']) : null;
    errorMessage = json['errorMessage'];
  }
}
  class Result {
  int? id;
  String? firstName;
  String? lastName;
  Null? userName;
  Null? password;
  String? phoneNumber;
  String? dialCode;
  bool? isActivated;
  String? roleName;
  Null? address;
  int? cityId;
  String? activationCode;
  Null? cityName;
  Null? streetName;
  Null? token;

  Result(
  {this.id,
  this.firstName,
  this.lastName,
  this.userName,
  this.password,
  this.phoneNumber,
  this.dialCode,
  this.isActivated,
  this.roleName,
  this.address,
  this.cityId,
  this.activationCode,
  this.cityName,
  this.streetName,
  this.token,
});

  Result.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  firstName = json['firstName'];
  lastName = json['lastName'];
  userName = json['userName'];
  password = json['password'];
  phoneNumber = json['phoneNumber'];
  dialCode = json['dialCode'];
  isActivated = json['isActivated'];
  roleName = json['roleName'];
  address = json['address'];
  cityId = json['cityId'];
  activationCode = json['activationCode'];
  cityName = json['cityName'];
  streetName = json['streetName'];
  token = json['token'];
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = this.id;
  data['firstName'] = this.firstName;
  data['lastName'] = this.lastName;
  data['userName'] = this.userName;
  data['password'] = this.password;
  data['phoneNumber'] = this.phoneNumber;
  data['dialCode'] = this.dialCode;
  data['isActivated'] = this.isActivated;
  data['roleName'] = this.roleName;
  data['address'] = this.address;
  data['cityId'] = this.cityId;
  data['activationCode'] = this.activationCode;
  data['cityName'] = this.cityName;
  data['streetName'] = this.streetName;
  data['token'] = this.token;
  return data;
  }
  }