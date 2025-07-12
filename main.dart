// lib/main.dart import 'package:flutter/material.dart'; import 'screens/home_screen.dart';

void main() { runApp(const NovaTickerApp()); }

class NovaTickerApp extends StatelessWidget { const NovaTickerApp({super.key});

@override Widget build(BuildContext context) { return MaterialApp( title: 'NovaTicker', theme: ThemeData.dark().copyWith( primaryColor: Colors.blue, scaffoldBackgroundColor: Colors.black, ), debugShowCheckedModeBanner: false, home: const HomeScreen(), ); } }

