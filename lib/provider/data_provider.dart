import 'package:cookify/models/item_model.dart';
import 'package:flutter/cupertino.dart';


class DataProvider extends ChangeNotifier {
  List<ItemModel> _likedproduct = [];

  List get likedproduct => _likedproduct;

  void setlist(ItemModel itemModel) {
    likedproduct.add(itemModel);
    notifyListeners();
  }

  void removeitem(int index) {
    likedproduct.removeAt(index);
    // notifyListeners();
  }
}
