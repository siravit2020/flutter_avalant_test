class ListCollections {
  final List<Map<String, Object>> listExam = [
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

  final List<Map<String, Object>> listTest1 = [];

  final List<Map<String, Object>> listTest2 = [{}];

  final List<Map<String, Object>> listTest3 = [
    {
      "idrt": "a",
      "type": "container",
      "props": {"height": "Infinity"}
    },
  ];
  final List<Map<String, Object>> listTest4 = [
    {
      "id": "a",
      "type": "container",
      "parrentID": "a",
      "props": {"height": "Infinity"}
    },
  ];

  final List<Map<String, Object>> listTest5 = [
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
      "parrentID": "g",
      "type": "text",
      "props": {"text": "Hello, World"}
    }
  ];
  final List<Map<String, Object>> listTest6 = [
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
      "parrentID": "a",
      "type": "text",
      "props": {"text": "Hello, World"}
    },
    {
      "id": "a",
      "parrentID": "b",
      "type": "text",
      "props": {"text": "Hello, World"}
    }
  ];

  final List<Map<String, Object>> listTest7 = [
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
    },
    {
      "id": "f",
      "parrentID": "a",
      "type": "container",
      "props": {"align": "center"}
    },
    {
      "id": "g",
      "parrentID": "f",
      "type": "container",
      "props": {"align": "center"}
    },
    
  ];
}
