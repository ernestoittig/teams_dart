import 'dart:math' show Random;

class Lista {
  final List<String> _list;

  Lista(List<String> list): _list = list;

  Lista.fromString(String str)
      : _list = str.split('\n').where((v) => !RegExp(r'^\s*$').hasMatch(v)).toList();
  
  String getRandom([bool del = false]) {
    final index = Random().nextInt(_list.length);
    if (del) return _list.removeAt(index);
    return _list[index];
  }

  List<String> get list => _list.toList();
}
