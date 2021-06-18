import 'dart:convert';

class ConvertList {
  String? checkError;
  String convert(List<Map<String, Object>> list) {
    Map<String, Object> out = {};
    List id = [];
    if (list.isEmpty || list.length < 1) return 'Error: list empty.';
    for (var element in list) {
      if (id.contains(element['id']))
        return 'Error: this id already exists in the tree.';
      id.add(element['id']);
      createNode(out, element);
      if (checkError != null) {
        return checkError!;
      }
    }
    return jsonEncode(out);
  }

  void createNode(Map<String, Object> list, var element) {
    checkError = null;
    if (element['id'] == null) {
      checkError = 'Error: not foud node "id".';
      return;
    }

    if (element['parrentID'] == null) {
      list.addAll(element);

      return;
    }
    if (list['id'] == element['parrentID'].toString()) {
      if (list['child'] != null) {
        list['children'] = [list['child'], element];
        list.remove('child');
      } else if (list['children'] != null) {
        list['children'] = [list['children'], element];
      } else {
        list['child'] = element;
      }
      element.remove('parrentID');
      return;
    }
    if (list['children'] != null) {
      for (var child in list['children'] as List<dynamic>) {
        createNode(child, element);
      }
    } else if (list['child'] != null) {
      createNode(list['child'] as Map<String, Object>, element);
    } else {
      checkError = 'Error: invaild parrentId.';
    }
  }
}
