import 'src/lista.dart';

export 'src/lista.dart';

/// Creates a list of evenly distributed teams
List<List<String>> makeTeams(Lista lista, int numberOfTeams) {
  final teams = <List<String>>[];
  // We make a copy just to make sure we aren't modifying any variables the user passes to us
  var copyN = numberOfTeams;
  final copyL = Lista(lista.list);
  while (copyN > 0 && copyL.list.isNotEmpty) {
    final team = <String>[];
    // We create a new variable because the length of the list will change with each iteration
    final numberOfPeople = copyL.list.length;
    for (var i = 0; i < (numberOfPeople / copyN).floor(); ++i) {
      team.add(copyL.getRandom(deleteChosen: true));
    }
    teams.add(team);
    --copyN;
  }
  return teams;
}
