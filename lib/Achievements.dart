// ignore_for_file: file_names, prefer_typing_uninitialized_variables
import 'Popup.dart';
List achievementsunlockedlist = [];
class Achievement {
  var id;
  var description;
  var type;
}
unlockAchievement(String id, String description, String type) {
  achievementsunlockedlist.add(id);
  Achievement oldaf = new Achievement();
  oldaf.id = id;
  oldaf.description = description;
  oldaf.type = type;
  main;
}
