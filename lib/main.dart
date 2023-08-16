import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DI/locater.dart';
import 'data/controller/task_provider.dart';
import 'utilities/routing/Router.dart';
import 'utilities/routing/RouterNamed.dart';
import 'utilities/routing/RoutingUilites.dart';
import 'utilities/style/appColors.dart';
import 'utilities/widgets/snackbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'note app',
        debugShowCheckedModeBanner: false,
        navigatorKey: RoutingUtil.navigatorKey,
        onGenerateRoute: Routers.onGenerateRoute,
        initialRoute: RouterName.splashScreen,
        scaffoldMessengerKey: MySnackBar.scaffoldKey,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.simeBlack),
        //home: HomeScreen()
      ),
    );
  }
}
