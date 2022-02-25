import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_flutter_app/models/favorites_model.dart';
import 'package:testing_flutter_app/screens/favorites.dart';
import 'package:testing_flutter_app/screens/home.dart';

void main() {
  runApp(TestingApp());
}

class TestingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          FavoritesPage.routeName: (context) => FavoritesPage(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
