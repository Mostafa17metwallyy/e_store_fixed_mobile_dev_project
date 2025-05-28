import 'package:flutter/material.dart';

class FavoritesProvider with ChangeNotifier {
  final Map<String, Map<String, dynamic>> _favorites = {};

  Map<String, Map<String, dynamic>> get favorites => _favorites;

  void toggleFavorite(String docId, Map<String, dynamic> product) {
    if (_favorites.containsKey(docId)) {
      _favorites.remove(docId);
    } else {
      _favorites[docId] = product;
    }
    notifyListeners();
  }

  bool isFavorite(String docId) {
    return _favorites.containsKey(docId);
  }
}
