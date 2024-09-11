import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_time_chat/services/provider/providers.dart';
import 'package:real_time_chat/ui/dimensions.dart';
import 'package:real_time_chat/ui/routes/routes.dart';

GlobalKey globalKey = GlobalKey();
Responsive responsive = Responsive();
void main() {
  runApp(MultiProvider(
    key: Responsive.navigatorKey,
    providers: providers,
    child: const MainApp()));
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    responsive = context.read<Responsive>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: init,
      routes: routesApp,
    );
  }
}
