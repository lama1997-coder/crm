part of 'login_import.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginData loginData;

  @override
  void initState() {
    loginData = LoginData(loginUser: di.locator<LoginUser>());
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<LoginModel>, GenericState<LoginModel>>(
      bloc: loginData.loginData,
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                Image.asset(Res.splash,
                    height: MediaQuery.of(context).size.height * 0.3,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width),
                DefaultFormField(
                  hintText: "User name ",
                  controller: state.data.username,
                ),
                DefaultFormField(
                  hintText: "Password",
                  controller: state.data.password,
                ),
              const  SizedBox(height: 50),
                DefaultButton(
                    title: "Login",
                    onTap: () {
                      loginData.login();
                    })
              ],
            ),
          ),
        );
      },
    );
  }
}
