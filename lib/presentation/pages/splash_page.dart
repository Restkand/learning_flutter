import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student_lecture_app/core/routes/app_router.gr.dart';
import 'package:student_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:student_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:student_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text(
          'Choose Section',
        ),
      ),
      body: SingleChildScrollView(
          padding: UIHelper.padding(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              ActionText(
                  onTap: () {
                    AutoRouter.of(context).push(const CalculatorRoute());
                  },
                  title: 'Calculator',
                  desc: 'Practice Calculator'),
              UIHelper.verticalSpace(10),
              ActionText(
                  onTap: () {
                    AutoRouter.of(context).push(const ToDoRoute());
                  },
                  title: 'To Do List',
                  desc: 'Saving To Do List'),
              UIHelper.verticalSpace(10),
              ActionText(
                  onTap: () {
                    AutoRouter.of(context).push(const NewsRoute());
                  },
                  title: 'News',
                  desc: 'Up to Date News'),
              ActionText(
                  onTap: () {
                    AutoRouter.of(context).push(const TimeRoute());
                  },
                  title: 'Time',
                  desc: 'Remembering what time is it?')
            ],
          )),
    );
  }
}
