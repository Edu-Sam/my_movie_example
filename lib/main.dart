import 'package:flutter/material.dart';
import 'package:my_movie_example/view/movie_screen.dart';
import 'package:my_movie_example/view_model/movie_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie MVVM Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: ChangeNotifierProvider(
        create: (context)=>MovieListViewModel(),
        child: MovieListPage(),
      )
    );
  }
}


