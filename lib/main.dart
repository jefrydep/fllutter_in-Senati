
import 'package:flutter/material.dart';
import 'package:new_app/screens/home_screen.dart';
import 'package:new_app/services/poke_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());
class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => PokeServices(),lazy: false,)


    ],
    child: MyApp(),);
   }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomeScreen(),
      );
    
  }
}