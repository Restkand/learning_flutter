import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student_lecture_app/core/commons/colors_const.dart';
import 'package:student_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:student_lecture_app/presentation/widgets/molecules/chip.dart';
import 'package:student_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:student_lecture_app/presentation/widgets/organisms/text_form_field.dart';
import 'package:student_lecture_app/presentation/widgets/organisms/ui_helper.dart';

part 'widgets/to_do_history_widget.dart';

@RoutePage()
class ToDoPage extends StatelessWidget {
  const ToDoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(title: Text('To Do Page')),
      bottomNavigationBar: Container(
        margin: UIHelper.padding(horizontal: 10, vertical: 20),
        child: ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            child: const Text('Save')),
      ),
      body: Padding(
        padding: UIHelper.padding(all: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormFieldCustom(
              maxLines: 3,
              title: 'To Do',
              controller: TextEditingController(),
              hintText: 'Please enter your to do task...',
              validator: (_) => null,
            ),
            Expanded(
                child: SingleChildScrollView(
              padding: UIHelper.padding(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HISTORY',
                    style: context.textTheme.headlineSmall
                        ?.copyWith(color: ColorConstant.green),
                  ),
                  UIHelper.verticalSpace(19),
                  Row(
                    children: [
                      ChipCustom(
                        onTap: () {},
                        title: 'All',
                        isChoosen: false,
                      ),
                      UIHelper.horizontalSpace(10),
                      ChipCustom(
                        onTap: () {},
                        title: 'Done',
                        isChoosen: true,
                      ),
                      UIHelper.horizontalSpace(10),
                      ChipCustom(
                        onTap: () {},
                        title: 'Not Done',
                        isChoosen: false,
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(10),
                  const _ToDoHistoryWidget(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
