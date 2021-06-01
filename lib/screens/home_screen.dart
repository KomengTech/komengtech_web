import 'package:flutter/material.dart';
import 'package:komengtech_web/screens/widgets/body/large_body.dart';
import 'widgets/ menu/bottomBarMenu.dart';
import 'widgets/body/main_body.dart';
import 'widgets/ menu/rightBarMenu.dart';
import 'widgets/body/small_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget _buildLargeLayout(BuildContext context) {
    return Container(
      child: Row(
        children: [
          mainBody(body: largeBody()),
          rightBarMenu(),
        ],
      ),
    );
  }

  Widget _buildMediumLayout(BuildContext context) {
    return Container(
      child: Row(
        children: [
          mainBody(body: largeBody()),
          rightBarMenu(),
        ],
      ),
    );
  }

  Widget _buildSmallLayout(BuildContext context) {
    return Container(
      child: Column(
        children: [
          mainBody(body: smallBody()),
          bottomBarMenu(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey.shade900,
                Colors.black87,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1200) {
                return _buildLargeLayout(context);
              } else if (constraints.maxWidth < 1200 &&
                  constraints.maxWidth > 800) {
                return _buildMediumLayout(context);
              } else {
                return _buildSmallLayout(context);
              }
            },
          ),
        ),
      ),
    );
  }
}
