// ignore_for_file: file_names, prefer_typing_uninitialized_variables
List achievementsunlockedlist = [];
class Achievement {
  var id;
  var description;
}
unlockAchievement(String id, String description) {
  achievementsunlockedlist.add(id);
  Achievement oldaf = new Achievement();
  oldaf.id = id;
  oldaf.description = description;
}
