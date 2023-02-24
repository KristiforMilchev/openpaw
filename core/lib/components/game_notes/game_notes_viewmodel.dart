import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

import '../../../domain/Assets/styles.dart';

class GameNotesViewModel extends BaseViewModel {
  List<String> _notes = [];
  List<String> get notes => _notes;

  String _note = "";

  late final TextEditingController _inputController = TextEditingController();
  get inputController => _inputController;

  Color _textFieldSelected = ThemeColors.mainThemeBackground;
  get textFieldSelected => _textFieldSelected;

  Color _textInputFontColor = ThemeColors.mainText;
  get textInputFontColor => _textInputFontColor;

  noteBoxChanged(String value) {
    _note = value;
  }

  noteBoxSubmitted(String value) {
    _notes.add(_note);
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
}
