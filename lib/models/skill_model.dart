class SkillModel {
  late String title;
  late String picture;

  SkillModel({
    required String title,
    required String picture,
  }) {
    this.title = title;
    this.picture = picture;
  }

  static List<SkillModel> skills = [
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
