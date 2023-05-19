part of 'widget_import.dart';

class BottomNavigationCustom extends StatefulWidget {
  final List<BottomNavModel> bottomData;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? selectedColor;
  final Color? defaultColor;
  final double? radius;
  final List<Widget> pages;

  BottomNavigationCustom(
      {Key? key,
      required this.bottomData,
      this.backgroundColor,
      this.margin,
      this.padding,
      this.selectedColor,
      this.defaultColor,
      this.radius,
      required this.pages})
      : super(key: key);

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
  @override
  void initState() {
    if (widget.pages.length != widget.bottomData.length) {
      PageNotEqual(
        "pass same page length",
      );
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 40),
        margin: widget.margin ?? const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
            color: widget.backgroundColor ?? Colors.amber,
            borderRadius: BorderRadius.circular(widget.radius ?? 30),
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
            children: widget.bottomData
                .map(
                  (e) => InkWell(
                    onTap: () {
                      widget.bottomData.forEach((element) {
                        element.selected = false;
                      });
                      e.selected = true;
                      setState(() {});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          e.icon,
                          color:
                              e.selected ?? false ?widget.selectedColor?? Colors.white :widget.defaultColor?? Colors.black,
                          size: e.selected??false? 100 : 10,
                        ),

                        Text(e.title ?? "",style: TextStyle(color:  e.selected ?? false ?widget.selectedColor?? Colors.white :widget.defaultColor?? Colors.black,),)
                      ],
                    ),
                  ),
                )
                .toList()));
  }
}
