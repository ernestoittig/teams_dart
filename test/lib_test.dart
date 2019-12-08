@TestOn('vm')

import 'package:test/test.dart';

import 'package:teams_dart/teams_dart.dart';

void main() {
  group('Lista', () {
    test('constructor creates an instance with all the elements of the list', () {
      expect(Lista(['a', 'b', 'c']).list, equals(['a', 'b', 'c']));
      var weirdList = ['233535', '32523535', '23555', 'ethehehwrth', '[]][kthkth', '093938069'];
      expect(Lista(weirdList).list, equals(weirdList));
    });
    test('.fromString() creates an instance with elements from a string', () {
      expect(Lista.fromString('a\nb\nc').list, equals(['a', 'b', 'c']));
      expect(Lista.fromString('    \na\n    \nb\nc\n').list, equals(['a', 'b', 'c']));
    });
  });
  group('makeTeams', () {
    test('makeTeams sorts people into teams', () {
      expect(makeTeams(Lista(['a', 'b', 'c','d', 'e', 'f','g', 'h']), 4), allOf([
        hasLength(4),
        everyElement(hasLength(2))
      ]));
    });
    test('makeTeams sorts people into teams even if the number of teams is not divisible by the number of people', () {
      expect(makeTeams(Lista(['a', 'b', 'c']), 2), containsAll([hasLength(2), hasLength(1)]));
    });
    test('makeTeams returns an empty array if there are 0 teams or 0 people', () {
      expect(makeTeams(Lista(['a', 'b', 'c']), 0), isEmpty);
      expect(makeTeams(Lista([]), 2), isEmpty);
    });
  });
}