
void main(){

  List<dynamic> exampleList = [1, 2.5, 3, 4.5, 'youngee'];

  print(exampleList);
  print(exampleList[1]);
  print(exampleList[4]);

  List<int> intList = [1,2,3,4,5,6,7];
  List<double> doubleList = [1,2,3,4,5,6,7];
  List<String> stringList = ['Hello', 'my', 'name', 'is', 'Saquib'];

  print(intList);
  print(doubleList);
  print(stringList);

  print(exampleList.length);
  print(exampleList.reversed);
  print(exampleList.isEmpty);
  print(exampleList.isNotEmpty);

  exampleList.add('example');
  print(exampleList);

  //MAPS

  Map<dynamic,dynamic> exampleMap = {
    'key1': false,
    'key2': 'example of key',
    'key3': 3,
    'key4': 1.5
  };

  print(exampleMap);
  print(exampleMap['key2']);
  print(exampleMap.entries);
  print(exampleMap.keys);
  print(exampleMap.values);
  print(exampleMap.length);

}
