// child: Padding(
            //     padding:const EdgeInsets.only(left: 15, right: 15),
            //     child: Consumer<TaskProvider>(
            //       builder: (context, taskProvider, child) {
            //         if (taskProvider.state == NotifierState.initial) {
            //           return Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Image.asset(
            //                   '${Pathes.imagePath}createNote${Extension.png}'),
            //               SpacesHelper.verticalSpace(10),
            //               Text(
            //                 "Create your first note !",
            //                 style: TextStyles.imageDescriptionTextStyle,
            //               )
            //             ],
            //           );
            //         } else if (taskProvider.state == NotifierState.loaded) {
            //           //  if(tasklist.isNotEmpty){
            //           //print(tasklist[0].title);
            //           return ListView.builder(
            //               padding: const EdgeInsets.only(top: 10),
            //               itemCount: taskProvider.tasks.length,
            //               itemBuilder: (context, index) => Slidable(
            //                     child: Container(
            //                       padding: const EdgeInsets.symmetric(
            //                           vertical: 20, horizontal: 20),
            //                       margin: const EdgeInsets.only(top: 15),
            //                       decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(15),
            //                           gradient: const LinearGradient(
            //                             colors: [
            //                               AppColors.simeblue,
            //                               AppColors.lightGreen,
            //                             ],
            //                           )),
            //                       child: ListTile(
            //                         leading: Text(taskProvider.tasks[index].title,
            //                             style: TextStyles.titleStyle3,
            //                             textAlign: TextAlign.center),
            //                       ),
            //                     ),
            //                   ));
            //         } else {
            //           return const CircularProgressIndicator(
            //             backgroundColor: AppColors.simeGreen,
            //           );
            //         }
            //       },
            //     )
            //     ),











            // return Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Image.asset('${Pathes.imagePath}createNote${Extension.png}'),
            //     SpacesHelper.verticalSpace(10),
            //     Text(
            //       "Create your first note !",
            //       style: TextStyles.imageDescriptionTextStyle,
            //     )
            //   ],
            // );
          // } else if (list.state == NotifierState.loaded) {
            // return Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: ListView.builder(
            //       itemCount: list.tasks.length,
            //       itemBuilder: (context, index) {
            //         return CustomListTile(
            //           key: UniqueKey(),
            //           title: list.tasks.elementAt(index).title,
            //           rightOnTap: () {
            //             CustomModalSheet.showModalSheet(context,
            //                 title: "Edit Note",
            //                 btnTitle: "Edit",
            //                 controller: editController, onPressed: () {
            //               context.read<TaskProvider>().updateTask(
            //                   list.tasks.elementAt(index).id,
            //                   editController.text);
            //               addController.clear();
            //             });
            //           },
            //           leftOnTap: () {},
            //         );
            //       }),
            // );
          // }
          // return const Center(
          //   child: CircularProgressIndicator(
          //     backgroundColor: AppColors.simeGreen,
          //   ),
          // );


    //       FutureBuilder(
    //   future: _fetchData(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       return Consumer<Data>(
    //         builder: (context, data, child) {
    //           return Text(data.value);
    //         },
    //       );
    //     } else {
    //       return CircularProgressIndicator();
    //     }
    //   },
    // );
 


