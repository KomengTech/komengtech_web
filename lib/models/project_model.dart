class ProjectModel {
  late String title;
  late String picture;
  late String url;

  ProjectModel({
    required String title,
    required String picture,
    required String url,
  }) {
    this.title = title;
    this.picture = picture;
    this.url = url;
  }

  static List<ProjectModel> projects = [
    ProjectModel(
        title: 'Language GetX',
        picture:
            'https://images.pexels.com/photos/267669/pexels-photo-267669.jpeg',
        url: 'https://bit.ly/3pdRhvu'),
    ProjectModel(
        title: 'Services GetX',
        picture:
            'https://images.pexels.com/photos/1054397/pexels-photo-1054397.jpeg',
        url: 'https://bit.ly/3fW249p'),
  ];
}
