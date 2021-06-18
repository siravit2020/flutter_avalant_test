import 'package:flutter/material.dart';
import 'package:flutter_avalant_test/controller/custom_tab_controller.dart';
import 'package:flutter_avalant_test/model/tab_item.dart';

class TabContainer extends StatelessWidget {
  const TabContainer({
    Key? key,
    required this.items,
    required this.controller,
  }) : super(key: key);
  final List<TabItem> items;
  final CustomTabController controller;

  
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: 800),
      child: Card(
        elevation: 4,
        shadowColor: Colors.black38,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    children: [
                      for (int i = 0; i < items.length; i++)
                        SizedBox(
                          width:
                              constraints.maxWidth / items.length > 100
                                  ? constraints.maxWidth / items.length
                                  : constraints.maxWidth / 4,
                          child: GestureDetector(
                            key: Key('tab_$i'),
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
                                child: Center(child: items[i].label),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minHeight: 200),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Material(
                        color: Colors.white,
                        key: ValueKey<int>(controller.activeIndex),
                        child: items[controller.activeIndex].content),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}