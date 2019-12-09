import 'dart:html';

import 'package:teams_dart/teams_dart.dart';

void main() {
  querySelector('#default').addEventListener('click', (_) {
    (querySelector('#people') as TextAreaElement).value = 'Ernesto Ittig\nFrancesca Modena\nTriana Macedo';
    (querySelector('#groups') as InputElement).value = '2';
  });
  querySelector('#teams-form').addEventListener('submit', (event) {
    event.preventDefault();
    final people = (querySelector('#people') as TextAreaElement).value;
    final groups = int.parse((querySelector('#groups') as InputElement).value);
    final teams = makeTeams(Lista.fromString(people), groups);

    var result = '';

    for (var i = 0; i < teams.length; ++i) {
      result += '<h2>Grupo ${i+1}</h2>\n<ul>';
      for (final x in teams[i]) {
        result += '<li>$x</li>\n';
      }
      result += '</ul>';
    }

    querySelector('.result').innerHtml = result;
  }, false);
}
