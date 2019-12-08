import 'dart:math' show Random;

/// A list of people to be sorted into teams
class Lista {
  final List<String> _list;

  /// Creates a new instance with the people from [list]
  Lista(List<String> list): _list = list;

  /// Creates the list from [str]
  /// 
  /// The values are split in line feed characters and all empty lines and whitespace is ignored
  Lista.fromString(String str)
      : _list = str.split('\n').where((v) => !RegExp(r'^\s*$').hasMatch(v)).toList();
  
  /// Get a random person from the list of people
  /// 
  /// If [deleteChosen] is true the person chosen will also be deleted from the list
  String getRandom({bool deleteChosen = false}) {
    final index = Random().nextInt(_list.length);
    if (deleteChosen) return _list.removeAt(index);
    return _list[index];
  }

  /// Get a copy of the list of people
  List<String> get list => _list.toList();
}
