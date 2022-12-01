import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items =
      []; // _items means it's private and cannot be modified outside this class.

  List<Place> get items {
    return [
      ..._items
    ]; // copy of items so that the actual items can not be modified outside the class.
  }

  void addPlace(
    String pickedTitle,
    File pickedImage,
  ) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      image: pickedImage,
      title: pickedTitle,
      location: null,
    );
    _items.add(newPlace);
    notifyListeners();
  }
}
