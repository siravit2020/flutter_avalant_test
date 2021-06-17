import 'dart:convert';

class ConvertList {
  var list = [
    {
      "id": "a",
      "type": "container",
      "props": {"height": "Infinity"}
    },
    {
      "id": "b",
      "parrentID": "a",
      "type": "container",
      "props": {"align": "center"}
    },
    {"id": "c", "parrentID": "b", "type": "column"},
    {"id": "d", "parrentID": "c", "type": "button"},
    {
      "id": "e",
      "parrentID": "c",
      "type": "text",
      "props": {"text": "Hello, World"}
    }
  ];
  // var list = [
  //   {
  //     "id": "b",
  //     "type": "container",
  //     "parrentID": "a",
  //     "props": {"height": "Infinity"}
  //   },
  //   {
  //     "id": "a",
  //     "type": "container",
  //     "props": {"height": "Infinity"}
  //   },
  //   {
  //     "id": "c",
  //     "parrentID": "a",
  //     "type": "container",
  //     "props": {"align": "center"}
  //   },
  //   {"id": "d", "parrentID": "b", "type": "column"},
  //   {"id": "e", "parrentID": "c", "type": "button"},
  //   {
  //     "id": "f",
  //     "parrentID": "c",
  //     "type": "text",
  //     "props": {"text": "Hello, World"}
  //   }
  // ];
  bool checkParrent = true;
  String convert() {
    Map<String, Object> out = {};
    for (var element in list) {
      if (checkParrent) {
        print('error');
        return 'error';
      }
      createNode(out, element);
    }
    print(jsonEncode(out).toString());
    return jsonEncode(out);
  }

  void createNode(Map<String, Object> list, var element) {
    if (element['parrentID'] == null) {
      list.addAll(element);
      return;
    }
    if (list['id'] == element['parrentID'].toString()) {
      if (list['child'] != null) {
        list['children'] = [list['child'], element];
        list.remove('child');
      } else
        list['child'] = element;
      return;
    }
    if (list['child'] == null) {
      checkParrent = false;
      return;
    }
    createNode(list['child'] as Map<String, Object>, element);
  }
}
