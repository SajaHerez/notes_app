import 'package:flutter/material.dart';
import 'package:notes_app/data/controller/task_provider.dart';
import 'package:provider/provider.dart';
import '../../../utilities/style/appColors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_model_sheet.dart';
import 'home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final addController = TextEditingController();
  final editController = TextEditingController();
  @override
  void initState() {
    final task = Provider.of<TaskProvider>(context, listen: false);
    task.getAllTasks();
    // context.read<TaskProvider>().getAllTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(150), child: CustomAppBar()),
        body: HomeBody(
          editController: editController,
        ),
        floatingActionButton: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(.4),
                  // spreadRadius: 4,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
                BoxShadow(
                  color: AppColors.black.withOpacity(.4),
                  // spreadRadius: 4,
                  blurRadius: 10,
                  offset: const Offset(-5, 0),
                )
              ]),
          child: FloatingActionButton(
            splashColor: AppColors.simeGreen.withOpacity(.3),
            backgroundColor: AppColors.simeBlack,
            elevation: 20,
            child: const Icon(
              Icons.add,
              size: 40,
            ),
            onPressed: () {
              CustomModalSheet.showModalSheet(context,
                  title: "Add Note",
                  btnTitle: "Save",
                  controller: addController, onPressed: () {
                context.read<TaskProvider>().addTask(addController.text);
                addController.clear();
              });
            },
          ),
        ),
      ),
    );
  }
}
