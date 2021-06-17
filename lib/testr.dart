import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Customize page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CustomTabController _ctrl = CustomTabController();

  @override
  void initState() {
    _ctrl.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xff8090FE),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("Current active tab index #${_ctrl.activeIndex}"),
          ),
          TabContainer(
            controller: _ctrl,
            items: <TabItem>[
              TabItem(
                label: Text("Tab A"),
                content: Center(
                  child: Text("A"),
                ),
              ),
              TabItem(
                label: Text("Tab B"),
                content: Center(
                  child: Text("B"),
                ),
              ),
              TabItem(
                label: Text("Tab C"),
                content: Center(
                  child: Text("C"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TabContainer extends StatefulWidget {
  const TabContainer({
    Key? key,
    required this.items,
    required this.controller,
  }) : super(key: key);
  final List<TabItem> items;
  final CustomTabController controller;

  @override
  _TabContainerState createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  @override
  Widget build(BuildContext context) {
    CustomTabController controller = widget.controller;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                for (int i = 0; i < widget.items.length; i++)
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        controller.activeIndex = i;
                      },
                      child: Material(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: controller.activeIndex == i
                              ? Colors.white
                              : Colors.grey,
                        ),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 100),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          color: controller.activeIndex == i
                              ? Color(0xff8090FE)
                              : Colors.white,
                          child: Center(child: widget.items[i].label),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Card(
            elevation: 4,
            shadowColor: Colors.black38,
            child: SizedBox(
              height: 100,
              child: Material(
                  textStyle:
                      TextStyle(fontSize: 40, color: Colors.grey.shade600),
                  child: widget.items[controller.activeIndex].content),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTabController extends ChangeNotifier {
  late int _activeIndex;
  CustomTabController() {
    _activeIndex = 0;
  }
  set activeIndex(int value) {
    _activeIndex = value;
    notifyListeners();
  }

  int get activeIndex => _activeIndex;

  @override
  void dispose() {
    _activeIndex = 0;
    super.dispose();
  }
}

class TabItem {
  const TabItem({
    Key? key,
    required this.label,
    required this.content,
  });
  final Text label;
  final Widget content;
}
