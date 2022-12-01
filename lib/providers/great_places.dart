import 'package:flutter/cupertino.dart';

import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = []; // _items means it's private and cannot be modified outside this class.

  List<Place> get items {
    return [...items]; // copy of items so that the actual items can not be modified outside the class.
  }
}