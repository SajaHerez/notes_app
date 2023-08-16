import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/controller/task_provider.dart';
import '../../../data/model/task.dart';
import '../../../utilities/constant/pathes.dart';
import '../../../utilities/style/appColors.dart';
import '../../../utilities/style/spaces.dart';
import '../../../utilities/style/textStyle.dart';
import '../../widgets/custom_list_tile.dart';
import '../../widgets/custom_model_sheet.dart';
import '../../widgets/dialog.dart';

// ignore: must_be_immutable
class HomeBody extends StatelessWidget {
  HomeBody({super.key, required this.editController});
  TextEditingController editController;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          if (taskProvider.state == NotifierState.loading) {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: AppColors.simeGreen,
              ),
            );
          } else if (taskProvider.state == NotifierState.loaded &&
              taskProvider.tasks.isNotEmpty) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                  itemCount: taskProvider.tasks.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        dateWidget(taskProvider.tasks, index - 1, index),
                        CustomListTile(
                          key: UniqueKey(),
                          title: taskProvider.tasks.elementAt(index).title,
                          leftOnTap: () {
                            editController.text =
                                taskProvider.tasks.elementAt(index).title;
                            CustomModalSheet.showModalSheet(context,
                                title: "Edit Note",
                                btnTitle: "Edit",
                                controller: editController, onPressed: () {
                              context.read<TaskProvider>().updateTask(
                                  taskProvider.tasks.elementAt(index).id,
                                  editController.text);
                              editController.clear();
                            });
                          },
                          rightOnTap: () {
                            showAlertDialog(
                              context,
                              onPressed: () {
                                context.read<TaskProvider>().removeTask(
                                    taskProvider.tasks.elementAt(index).id);
                                Navigator.pop(context);
                              },
                            );
                          },
                        ),
                      ],
                    );
                  }),
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('${Pathes.imagePath}createNote${Extension.png}'),
                SpacesHelper.verticalSpace(10),
                Text(
                  "Create your first note !",
                  style: TextStyles.imageDescriptionTextStyle,
                )
              ],
            );
          }
        },
      ),
    );
  }
}

dateWidget(List<Task> tasks, index1, index2) {
  if (index1 != index2) {
    DateTime dt = DateTime.parse(tasks[index2].created_at);
    // ignore: prefer_interpolation_to_compose_strings
    String date = dt.day.toString() +
        "," +
        dt.month.toString() +
        "- " +
        dt.year.toString() +
        " " +
        dt.hour.toString() +
        ':' +
        dt.minute.toString() +
        " " +
        dt.timeZoneName;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.left,
          date,
          style: TextStyles.hintTextStyle1,
        )
      ],
    );
  }
}
