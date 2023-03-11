import 'package:flutter/material.dart';
import './pages/top_page.dart';   // Top Page
import './pages/pageList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green, 
        textTheme: const TextTheme(
          displayMedium: TextStyle(fontFamily: 'MochiyPopPOne', color: Colors.black),
          headlineSmall: TextStyle(fontFamily: 'MochiyPopPOne', color: Colors.black),
          titleLarge: TextStyle(fontFamily: 'MochiyPopPOne', color: Colors.white, fontSize: 25),
          titleMedium: TextStyle(fontSize: 17)
        )
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder> {
        '/inputNamePage': (BuildContext context) => const InputNamePage(),
        '/selectOperationPage': (BuildContext context) => const SelectOperationPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const TopPage();
  }
}
