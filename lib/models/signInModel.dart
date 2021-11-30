class SignInModel {
  SignInModel({required this.Email, required this.Password});
  final String Email;
  final String Password;

  Map<String, dynamic> toJason() {
    return {
      'email': Email,
      'password': Password,
    };
  }
}
