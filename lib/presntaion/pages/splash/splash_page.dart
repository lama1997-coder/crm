part of 'splash_import.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset:const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          margin:const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      child: Column(children: [
        DefaultText(title: "Manege Your\n Customers",textStyle: Theme.of(context).textTheme.displayLarge,),
        
        Image.asset(Res.splash,),
        DefaultButton(title: "Login",onTap: (){},),
        DefaultButton(title: "Sign-In",onTap: (){},style: Style.cancelButton,)






      ],),),
    );
  }
}
