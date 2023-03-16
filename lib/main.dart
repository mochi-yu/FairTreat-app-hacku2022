import 'package:flutter/material.dart';
import 'package:warikan_app/pages/qr_code_page.dart';
import 'pages/pageList.dart';

void main() async {
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
        '/topPage' : (BuildContext context) => const TopPage(),
        '/inputNamePage': (BuildContext context) => InputNamePage(),
        '/selectOperationPage': (BuildContext context) => const SelectOperationPage(),
        '/selectItemFromPhotoPage' : (BuildContext context) => const SelectItemFromPhoto(),
        '/inputItemDataPage' : (BuildContext context) => InputItemDataPage(),
        '/qrcodePage' : (BuildContext context) => QRCodePage(),
        '/warikanPage' : (BuildContext context) => const WarikanPage(),
        '/resultPage' : (BuildContext context) => const ResultPage(),
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
    return PageShow();
  }
}
