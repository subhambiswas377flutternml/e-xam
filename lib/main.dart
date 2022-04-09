import 'package:exam/util/barrel.dart';
import 'package:exam/screens/type_page.dart';
import 'package:flutter/services.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget
{
  const MyApp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: TypePage(),
    );
  }
}