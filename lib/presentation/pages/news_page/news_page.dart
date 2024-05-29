import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:student_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PlatformAppBar(title: Text('News Page')),
        body: SingleChildScrollView(
          padding: UIHelper.padding(vertical: 15, horizontal: 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ));
  }
}
