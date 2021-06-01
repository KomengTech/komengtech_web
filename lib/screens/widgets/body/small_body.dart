import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../models/project_model.dart';
import '../../../models/skill_model.dart';

Widget smallBody() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    child: Column(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/hafiz.png'), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 20),
        Text('HAFIZ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.bold)),
        Container(
          width: 100,
          height: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.lightBlue,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Programming Skills',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                const SizedBox(height: 10),
                Container(
                  width: 350,
                  height: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.lightBlue,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: SkillModel.skills.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: skillsWidget(
                        imgUrl: SkillModel.skills[index].picture,
                        text: SkillModel.skills[index].title,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Projects',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                const SizedBox(height: 10),
                Container(
                  width: 350,
                  height: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.lightBlue,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: ProjectModel.projects.length,
                    itemBuilder: (context, index) => projectWidget(
                      picture: ProjectModel.projects[index].picture,
                      url: ProjectModel.projects[index].url,
                      title: ProjectModel.projects[index].title,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget skillsWidget({
  required String imgUrl,
  required String text,
}) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25.0,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.network(imgUrl),
        ),
      ),
      const SizedBox(height: 10.0),
      Text(text, style: TextStyle(color: Colors.white)),
    ],
  );
}

Widget projectWidget({
  required String picture,
  required String url,
  required String title,
}) {
  return Container(
    height: 150,
    width: 150,
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        image:
            DecorationImage(fit: BoxFit.cover, image: NetworkImage(picture))),
    child: InkWell(
      onTap: () => launch(url),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.github, size: 18, color: Colors.black87),
              const SizedBox(width: 5),
              Text(
                title,
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
