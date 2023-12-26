import 'package:hng_tasks/models/skil_info_model.dart';

class DevModel {
  final String name;
  final String number;
  final String mail;
  final String bio;
  final List<String> hobbies;
  final List<SkillsInfo> info;
  DevModel(
      {required this.name,
      required this.number,
      required this.mail,
      required this.bio,
      required this.hobbies,
      required this.info});
}
