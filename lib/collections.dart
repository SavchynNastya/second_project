void showCollectionsWork(){
  print('\nLIST');
  List<int> listOfIntegers = [1, 2, 3, 4, 5, 6];
  listOfIntegers.add(7);
  listOfIntegers.addAll([8, 9, 10]);
  print('Length of list : ${listOfIntegers.length}');
  print('First list element : ${listOfIntegers.first}');
  print('Last list element : ${listOfIntegers.last}');
  print('Odd elements: ${listOfIntegers.where((element) => element.isOdd)}');
  print('Numbers until 5: ${listOfIntegers.takeWhile((value) => value != 5)}');
  print('Numbers 5 and after 5: ${listOfIntegers.skipWhile((value) => value != 5)}');
  print('Items contain 3 --> ${listOfIntegers.any((element) => element == 3)}');
  print('Items are all 3 --> ${listOfIntegers.every((element) => element == 3)}');
  print('First that divides by 2 --> ${listOfIntegers.firstWhere((element) => element%2==0)}');
  listOfIntegers.removeWhere((element) => element > 7);
  print('After deleting elements greater than 7 --> $listOfIntegers');
  print('List to Set --> ${listOfIntegers.toSet()}');
  var newList = listOfIntegers.map((e) => e *= 2);
  print('All items multiplied by 2 --> $newList\n');

  print('SET');
  Set<String> cities = {'Kyiv', 'Dnipro', 'Lviv', 'Ivano-Frankivsk', 'Ternopil', 'Lutsk', 'Cherkasy'};
  print('Length of set cities --> ${cities.length}');
  print('Element on index 3 --> ${cities.elementAt(3)}');
  print('First set element : ${cities.first}');
  print('Last set element : ${cities.last}');
  cities.add('Chernihiv');
  cities.addAll(['Khmelnytskyi', 'Vinnytsia']);

  Set<String> subCities = {'Kyiv', 'Dnipro', 'Odesa'};
  print('Intersection of sets ${cities.intersection(subCities)}');
  print('Union of sets ${cities.union(subCities)}');

  print('Contains Lviv --> ${cities.contains('Lviv')}');
  print('Contains Lviv, Horodenka --> ${cities.containsAll(['Lviv', 'Horodenka'])}\n');

  print('MAP');
  var personalInfo = {'Name':'Anastasia', 'Age':18, 'PhoneNumber': '719289716'};
  personalInfo['EyeColor'] = 'brown';
  print('Values of map --> ${personalInfo.values}');
  print('Check if contains a key Age --> ${personalInfo.containsKey('Age')}');
  print('Check if contains a value 5 --> ${personalInfo.containsValue(5)}');

  var studentInfo = {'YearsOfStudying': 2, 'Specialty': 121, 'Group': 'TB-13'};
  var info = {...personalInfo, ...studentInfo};

  info.remove('EyeColor');

  print('Merged maps');
  info.forEach((key, value) {print('$key is $value');});
  assert(personalInfo.containsValue(5), 'Personal Info must contain value 5');
  
}