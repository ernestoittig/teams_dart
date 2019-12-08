import 'dart:io';

import 'package:teams_dart/teams_dart.dart';

void main(List<String> args) {
  int n;
  var people = File('people').readAsStringSync();
  if (args.isNotEmpty && int.tryParse(args[0]) != null) {
    n = int.parse(args[0]);
  } else {
    print('How many teams?');
    n = int.parse(stdin.readLineSync());
  }
  print(makeTeams(Lista.fromString(people), n));

}
