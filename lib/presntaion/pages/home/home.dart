part of 'home_import.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          margin: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height / 10,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                )
              ]),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Icon(Icons.home),
            const Icon(Icons.home),
            const Icon(Icons.home),
            const Icon(Icons.home)
          ])),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: DefaultText(
          title: 'Home',
        ),
      ),
    );
  }
}
