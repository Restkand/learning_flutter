part of '../to_do_page.dart';

class _ToDoHistoryWidget extends StatelessWidget {
  const _ToDoHistoryWidget();

  @override
  Widget build(BuildContext context) {
    // return Text(
    //   'No history found',
    //   style: context.textTheme.bodySmall
    //       ?.copyWith(color: ColorConstant.grey, fontStyle: FontStyle.italic),
    // );
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (val) {
                if (val == null) return;
                // Tpdp add logic here
              },
            ),
            Expanded(
              child: Row(
                children: [
                  const Expanded(child: Text('Bring the book')),
                  UIHelper.horizontalSpace(5),
                  Text(
                    '(edited)',
                    style: context.textTheme.labelSmall?.copyWith(
                        color: ColorConstant.grey, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            UIHelper.horizontalSpace(10),
            InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.edit,
                  color: ColorConstant.primary,
                )),
            UIHelper.horizontalSpace(10),
            InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.delete,
                  color: ColorConstant.primary,
                ))
          ],
        ),
        UIHelper.divider(),
      ],
    );
  }
}
