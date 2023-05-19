part of 'home_import.dart';

class HomeData {
  GenericBloc<List<BottomNavModel>> bottomNavModel = GenericBloc([
    BottomNavModel(icon: Icons.home, title: "Home", selected: true),
    BottomNavModel(icon: Icons.person, title: "Customers", selected: false),
    BottomNavModel(icon: Icons.person_2, title: "Profile", selected: false),
    BottomNavModel(icon: Icons.settings, title: "Settings", selected: false)
  ]);

  List<Widget>pages = [Container(color: Colors.red,width: 100,height: 100,),Container(),Container(),Container()];
}
