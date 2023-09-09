class RegisterDataModel {
  String userName, phoneNumber, password;
  String? countryCode, email, identity;

  RegisterDataModel(
      {required this.password,
      required this.phoneNumber,
      required this.userName,
      this.countryCode,
      this.email,
      this.identity});
}
