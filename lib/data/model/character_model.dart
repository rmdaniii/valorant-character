
import 'package:valorant/data/model/ability_model.dart';
import 'package:valorant/data/model/voice_line.dart';

class Character{

  String description,displayIcon,fullPortrait,displayName;
  List<Ability> abilities;
  VoiceLine voice_line;

  Character({required this.description, required this.displayIcon, required this.fullPortrait,
      required this.displayName, required this.abilities, required this.voice_line});
}