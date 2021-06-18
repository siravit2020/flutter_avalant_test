
import 'package:flutter_avalant_test/controller/custom_tab_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CustomTabController Test', () {
    final controller = CustomTabController();
    controller.activeIndex;
    expect(controller.activeIndex, 0);
    controller.activeIndex = 2;
    expect(controller.activeIndex, 2);
  });

}
