part of 'login_import.dart';

class LoginData {
  final LoginUser loginUser;

  LoginData({required this.loginUser});

  GenericBloc<LoginModel> loginData =
      GenericBloc(LoginModel(TextEditingController(), TextEditingController()));

  login() {
    loginUser.loginUser(loginData.state.data);
  }
}
