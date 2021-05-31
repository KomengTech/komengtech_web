import 'package:get/get.dart';
import 'package:komengtech_web/models/project_model.dart';
import 'package:komengtech_web/models/skill_model.dart';

class AppController extends GetxController {
  var currentPageIndex = 0.obs;
  var selectedIndex = 0.obs;

  final List<ProjectModel> projects = [
    ProjectModel(
      title: 'Language GetX',
      picture:
          'https://images.pexels.com/photos/267669/pexels-photo-267669.jpeg',
      url: 'https://bit.ly/3pdRhvu',
    ),
    ProjectModel(
      title: 'Services GetX',
      picture:
          'https://images.pexels.com/photos/1054397/pexels-photo-1054397.jpeg',
      url: 'https://bit.ly/3fW249p',
    ),
  ];

  final List<SkillModel> skills = [
    SkillModel(
      title: 'Flutter',
      picture: 'https://img.icons8.com/color/48/000000/flutter.png',
    ),
    SkillModel(
      title: 'Swift',
      picture: 'https://img.icons8.com/color/48/000000/swift.png',
    ),
    SkillModel(
      title: 'Java',
      picture:
          'https://img.icons8.com/color/48/000000/java-coffee-cup-logo.png',
    ),
    SkillModel(
      title: 'Javascript',
      picture: 'https://img.icons8.com/color/48/000000/javascript.png',
    ),
  ];
}
