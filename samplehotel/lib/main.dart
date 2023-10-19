import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:samplehotel/modules/home/controller/home_controller.dart';
import 'package:samplehotel/modules/people/controller/people_controller.dart';
import 'package:samplehotel/routes/app_pages.dart';

void main() {
  mainApp();
}

void mainApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  setupController();
  ErrorWidget.builder = (details) => Scaffold(
        body: Center(
          child: Text('Error\n${details.exception}'),
        ),
      );
  if (kReleaseMode) {
    return runApp(const App());
  }

  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Application',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      themeMode: ThemeMode.light,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}

void setupController() {
  Get.lazyPut(() => HomeController());
  Get.lazyPut(() => PeopleController());
}
