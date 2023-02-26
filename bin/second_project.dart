import 'package:second_project/syntactic_sugar.dart' as syntactic_sugar;
import 'package:second_project/functions_demo.dart' as functions_demo;
import 'package:second_project/constructors_demo.dart' as constructors;
import 'package:second_project/collections.dart' as collections;

void main() {
  syntactic_sugar.demonstrateSyntacticSugar();
  functions_demo.callFunctions();
  try{
    print(constructors.Dog('Snoopy', 2));
    print(constructors.Dog('Snoopy', -2));
  } catch(Exception){
    print(Exception.toString());
  }

  try {
    var kitty = constructors.Cat('Amelia', 3);
    print(kitty);
    kitty.catchMouse();
    print(constructors.Cat('Amelia', -2));
  } catch (Exception) {
    print(Exception.toString());
  }

  collections.showCollectionsWork();
}
