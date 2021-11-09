import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramses_indalecio_web/providers/page_provider.dart';
import 'package:ramses_indalecio_web/router/router.dart';

void main() => runApp(AppState());

//Colocando de manera globla el provider
class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PageProvider())],
      child: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Flurorutas.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ramses indalecio',
      initialRoute: '/home',
      onGenerateRoute: Flurorutas.router.generator,
    );
  }
}
