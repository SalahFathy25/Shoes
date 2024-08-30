import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shoes_ecommerce_app/components/FavoriteBloc.dart';
import 'package:shoes_ecommerce_app/screens/Login&SignUp/Login.dart';
import 'package:shoes_ecommerce_app/screens/favorite_screen.dart';
import 'package:shoes_ecommerce_app/screens/home_screen.dart';
import 'package:shoes_ecommerce_app/screens/splash_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    BlocProvider(
      create: (context) => FavoriteBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (context) =>const HomeScreen(),
        'favorite': (context) =>const FavoriteScreen(),
        'Login': (context) =>const Login(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Shoes Ecommerce_App',
      home: const SplashScreen(),
    );
  }
}
