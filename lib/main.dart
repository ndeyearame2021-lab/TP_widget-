
import 'package:flutter/material.dart';
import 'pages/icon_page.dart..dart';
import 'pages/avatar_page.dart';
import 'pages/card_page.dart';
import 'pages/listtile_page.dart';
import 'pages/contacts_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool modeSombre = false;

  void changerTheme() {
    setState(() {
      modeSombre = !modeSombre;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP Widgets 2ACINFO',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.light,
        useMaterial3: true,
      ),

      darkTheme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),

      themeMode: modeSombre ? ThemeMode.dark : ThemeMode.light,

      // home: const IconPage(),
      // home: const AvatarPage(),
      // home: const CardPage(),
      // home: const ListTilePage(),

      home: ContactsPage(
        modeSombre: modeSombre,
        changerTheme: changerTheme,
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TP Widgets – Menu')),
      body: const Center(
        child: Text('Ajoutez ici les liens vers vos écrans'),
      ),
    );
  }
}
