import 'package:flutter/material.dart';
import 'package:flutter_avalant_test/controller/custom_tab_controller.dart';
import 'package:flutter_avalant_test/widgets/tab_container.dart';
import 'package:flutter_avalant_test/model/tab_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          Material(
            textStyle: Theme.of(context).textTheme.headline6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Current active tab index #",
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    width: 20,
                    key: ValueKey<int>(_ctrl.activeIndex),
                    child: Text(
                      "${_ctrl.activeIndex}",
                    ),
                  ),
                ),
              ],
            ),
          ),
          TabContainer(
            controller: _ctrl,
            items: <TabItem>[
              TabItem(
                label: Text("Tab A"),
                content: Center(
                  child: Text(
                    "A",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              TabItem(
                label: Text("Tab B"),
                content: Center(
                  child: Text(
                    "B",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              TabItem(
                label: Text("Tab C"),
                content: Center(
                  child: Text(
                    "C",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
