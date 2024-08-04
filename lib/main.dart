import 'package:flutter/material.dart';
import 'package:space_app/screens/main_screen.dart';
import 'util.dart';
import 'theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  // Ensure that plugin services are initialized so that `SystemChrome` can be used.
  WidgetsFlutterBinding.ensureInitialized();

  // Set the preferred orientations.
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
  await dotenv.load(fileName: ".env");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme =
        createTextTheme(context, "Ubuntu Condensed", "Ubuntu");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'AstroDaily',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const MainScreen(),

      //rendering screen.
    );
  }
}
