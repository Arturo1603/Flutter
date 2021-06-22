import 'package:cl3_arturochaparro/src/providers/service_provider.dart';
import 'package:cl3_arturochaparro/src/routes/router.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ServiceProvider())
      ],
      child: MaterialApp(
        title: 'Examen Final',
        initialRoute: 'home',
        routes: getApplicationRoutes(),
      ),
    );
  }
}