import 'package:collection/collection.dart';

void main(List<String> args) {
  
  testBoolist();
  print('--------------');
  mapCanonico();
  print('--------------');
  iterableCombiando();
  print('------------------');
  testCombinedListView();
  print('------------------');
  testCombinedMapView();
  print('------------------');
  mapMerging();
  print('------------------');
}

void mapMerging() {
  const info1 = {
    'name': 'John 1',
    'age': 30,
    'height': 1.8,
  };
  const info2 = {
    'name': 'John 2',
    'age': 31,
    'height': 1.8,
    'weight': 80,
  };
  /* final merge = mergeMaps(
    info1,
    info2,
    value: (one, two) => two,
  ); */
  final merge = mergeMaps(
    info1, info2,
    value: (x, z) => z);

  print(merge);
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};
  var combinedMap = CombinedMapView([
    map1,
    map2,
    map3,
  ]);
  print(combinedMap);
  print(combinedMap['a']);
  print(combinedMap['b']);
  print(combinedMap['c']);
  print(combinedMap['d']);
  print(combinedMap['e']);
  print(combinedMap['f']);
  try {
    combinedMap['a'] = 10;
  } catch (e) {
    print(e);
  }
}

void testCombinedListView() {
  // CombinedListView is a view of a list of lists, and is unmodifiable
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];
  final names = CombinedListView([
    swedishNames,
    norwegianNames,
    frenchNames,
  ]);
  print(names);
  if (names.contains('Sven')) {
    print('Sven is in the list');
  }
  try {
    names.removeAt(0);
  } catch (e) {
    print(e);
  }
}

void  iterableCombiando() {

  final Iterable<int> iterable1 = [1 , 2, 3, 4 ,5];
  final iterable2 = [ 10, 15, 12, 52];
  final Iterable<int> iterable3 = [41, 36, 20];

  var combinar = CombinedIterableView([
    iterable1, iterable2, iterable3
  ]);

  iterable2.add(80);

  print(combinar);
  print(combinar.length);
  print(combinar.isEmpty);
  print(combinar.contains(5));
  print(combinar.contains(12));
}

void mapCanonico(){

  final info = {
    'nome' : 'Jonas',
    'idade' : 18,
    'sexo' : 'masculino',
    'endereço' : 'Carlifornia-PR',
  };

  final canoMap = CanonicalizedMap.from(info, ((key) {
    return key.length;
  }));
  print(canoMap);
}

void testBoolist() {

  final listaBoleana = BoolList(
    10, growable: true);

  print(listaBoleana);

  listaBoleana[3] = true;

  if (listaBoleana[3]){
    print('valor TRUE no index 3');
  } else {
    print('valor é FALSE no index 3');
  }

  print(listaBoleana);
  print('\n');
  listaBoleana.length *= 2;
  print(listaBoleana);
}