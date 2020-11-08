import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CTProvider with ChangeNotifier {
  var selectedIndex = 0;
  void changeSelectedBN(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
