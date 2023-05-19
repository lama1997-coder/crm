part of 'home_import.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeData homeData;

  @override
  void initState() {
    homeData =  HomeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<BottomNavModel>>,
        GenericState<List<BottomNavModel>>>(
      bloc: homeData.bottomNavModel,
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar:Container(
              alignment: Alignment.center,
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
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: state.data
                      .map((e) => InkWell(
                          onTap: () {
                            state.data.forEach((element) {
                              element.selected = false;
                            });
                            state.data[state.data.indexOf(e)].selected = true;

                            homeData.bottomNavModel.onUpdateData(state.data);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                e.icon,
                                color: e.selected ?? false
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              DefaultText(title: e.title ?? "")
                            ],
                          )))
                      .toList())),
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            title: DefaultText(
              title: 'Home',
            ),
          ),
          body: homeData.pages[state.data.indexWhere((element) => element.selected==true)],
        );
      },
    );
  }
}
