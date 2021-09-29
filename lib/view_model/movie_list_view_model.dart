import 'MovieViewModel.dart';
import 'package:my_movie_example/services/Webservice.dart';
import 'package:flutter/material.dart';


class MovieListViewModel extends ChangeNotifier{

  List<MovieViewModel> movies=[];

  Future<void> fetchMovies(String keyword) async{
    final results=await Webservice().fetchMovies(keyword);
    this.movies=results.map((item) => MovieViewModel(movie: item)).toList();
    notifyListeners();
  }
}