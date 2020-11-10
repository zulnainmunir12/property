import 'package:flutter/material.dart';
import 'package:property/core/app_config/app_config.dart';
import 'package:property/core/service/navigation_service.dart';
import 'package:property/core/service/scroll_behaviour.dart';
import 'package:property/locator.dart';
import 'package:property/router.dart';

AppConfig _appConfig = AppConfig();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ilaan Property',
      onGenerateRoute: NavigationRouter.generateRoute,
      initialRoute: NavigationRouter.splashScreen,
      navigatorKey: locator<NavigationService>().navigatorKey,
      theme: _appConfig.themeData,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: RemoveScrollGlow(),
          child: child,
        );
      },
    );
  }
}
