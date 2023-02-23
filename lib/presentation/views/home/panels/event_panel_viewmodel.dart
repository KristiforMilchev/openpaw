import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../../domain/Assets/styles.dart';

class EventPanelViewModel extends BaseViewModel {
  bool _isCreateVisible = true;
  get isCreateVisible => _isCreateVisible;

  bool _isAddNewVisible = false;
  get isAddNewVisible => _isAddNewVisible;

  String _note = "";

  late final TextEditingController _inputController = TextEditingController();
  get inputController => _inputController;

  Color _textFieldSelected = ThemeColors.mainText;
  get textFieldSelected => _textFieldSelected;

  Color _textInputFontColor = ThemeColors.mainThemeBackground;
  get textInputFontColor => _textInputFontColor;

  noteBoxChanged(String value) {
    _note = value;
  }

  noteBoxSubmitted(String value) {
    _inputController.clear();
    notifyListeners();
  }

  focusChanged(bool value) {
    if (value) {
      _textFieldSelected = ThemeColors.mainText;
      _textInputFontColor = ThemeColors.mainThemeBackground;
    } else {
      _textFieldSelected = ThemeColors.mainThemeBackground;
      _textInputFontColor = ThemeColors.mainText;
    }

    notifyListeners();
  }

  createNewEvent() {
    _isCreateVisible = false;
    _isAddNewVisible = true;
    notifyListeners();
  }

  titleChanged(String value) {}

  colorSelected(Color color) {}

  cancelCreate() {
    _isCreateVisible = true;
    _isAddNewVisible = false;
    notifyListeners();
  }
}
