import 'dart:convert';

import 'package:flutter_avalant_test/function/convert_list.dart';
import 'package:flutter_avalant_test/data/list_collections.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Convert List Test : Exam', () {
    final convert = ConvertList();
    final list = ListCollections();
    final result = convert.convert(list.listExam);
    expect(result, isNot('Error: list empty.'));
    expect(result, isNot('Error: invaild parrentId.'));
    expect(result, isNot('Error: not foud node "id".'));
    expect(result, isNot('Error: this id already exists in the tree.'));
    print('>>>>>>>>>>\n' '$result' '\n<<<<<<<<<<');
  });
  test('Convert List Test : Test1', () {
    final convert = ConvertList();
    final list = ListCollections();
    final result = convert.convert(list.listTest1);
    expect(result, 'Error: list empty.');
    print('>>>>>>>>>>\n' '$result' '\n<<<<<<<<<<');
  });
  test('Convert List Test : Test2', () {
    final convert = ConvertList();
    final list = ListCollections();
    final result = convert.convert(list.listTest2);
    expect(result, 'Error: not foud node "id".');
    print('>>>>>>>>>>\n' '$result' '\n<<<<<<<<<<');
  });
  test('Convert List Test : Test3', () {
    final convert = ConvertList();
    final list = ListCollections();
    final result = convert.convert(list.listTest3);
    expect(result, 'Error: not foud node "id".');
    print('>>>>>>>>>>\n' '$result' '\n<<<<<<<<<<');
  });
  test('Convert List Test : Test4', () {
    final convert = ConvertList();
    final list = ListCollections();
    final result = convert.convert(list.listTest4);
    expect(result, 'Error: invaild parrentId.');
    print('>>>>>>>>>>\n' '$result' '\n<<<<<<<<<<');
  });
  test('Convert List Test : Test5', () {
    final convert = ConvertList();
    final list = ListCollections();
    final result = convert.convert(list.listTest5);
    expect(result, 'Error: invaild parrentId.');
    print('>>>>>>>>>>\n' '$result' '\n<<<<<<<<<<');
  });

  test('Convert List Test : Test6', () {
    final convert = ConvertList();
    final list = ListCollections();
    final result = convert.convert(list.listTest6);
    expect(result, 'Error: this id already exists in the tree.');
    print('>>>>>>>>>>\n' '$result' '\n<<<<<<<<<<');
  });

  test('Convert List Test : Test7', () {
    final convert = ConvertList();
    final list = ListCollections();
    final result = convert.convert(list.listTest7);
    expect(result, isNot('Error: list empty.'));
    expect(result, isNot('Error: invaild parrentId.'));
    expect(result, isNot('Error: not foud node "id".'));
    expect(result, isNot('Error: this id already exists in the tree.'));
    print('>>>>>>>>>>\n' '$result' '\n<<<<<<<<<<');
  });
}
