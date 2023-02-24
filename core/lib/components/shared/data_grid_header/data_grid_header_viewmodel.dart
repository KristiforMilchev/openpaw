import 'package:stacked/stacked.dart';

class DataGridHeaderViewModel extends BaseViewModel {
  bool _hover = false;
  get hover => _hover;

  mouseOver(bool value) {
    _hover = !_hover;
    notifyListeners();
  }

  filterSelected() {}
}
