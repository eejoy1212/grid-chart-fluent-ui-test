import 'package:fluent_ui/fluent_ui.dart';
import 'package:fluent_ui_test/grid_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        accentColor: Colors.blue,
        iconTheme: const IconThemeData(
          size: 24,
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        accentColor: Colors.blue,
        iconTheme: const IconThemeData(
          size: 24,
        ),
      ),
      home: const GridViewTest(),
    );
  }
}
