import 'src/lista.dart';

export 'src/lista.dart';

List<List<String>> makeTeams(Lista lista, int numberOfTeams) {
  final teams = <List<String>>[];
  var copyN = numberOfTeams;
  final copyL = Lista(lista.list);
  while (copyN > 0 && copyL.list.isNotEmpty) {
    final team = <String>[];
    final numberOfPeople = copyL.list.length;
    for (var i = 0; i < (numberOfPeople / copyN).floor(); ++i) {
      team.add(copyL.getRandom(true));
    }
    teams.add(team);
    --copyN;
  }
  return teams;
}
