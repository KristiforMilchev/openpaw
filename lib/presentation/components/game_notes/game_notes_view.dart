import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import '../../../domain/Assets/styles.dart';
import 'game_notes_viewmodel.dart';

class GameNotes extends StatelessWidget {
  final int flex;

  const GameNotes({super.key, required this.flex});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: (() => GameNotesViewModel()),
      builder: (context, viewModel, child) => Expanded(
          flex: flex,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 10,
                child: ListView(
                    children: viewModel.notes
                        .map((e) => Container(
                              padding: EdgeInsets.all(20),
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: ThemeColors.mainThemeBackground,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.transparent,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: Text(
                                e,
                                style: TextStyle(
                                  color: ThemeColors.mainText,
                                ),
                              ),
                            ))
                        .toList()),
              ),
              Divider(
                height: 5,
                color: ThemeColors.innerText,
              ),
              Focus(
                onFocusChange: (value) => viewModel.focusChanged(value),
                child: TextField(
                  minLines: 6,
                  maxLines: 12,
                  onChanged: (value) => viewModel.noteBoxChanged(value),
                  onSubmitted: (value) => viewModel.noteBoxSubmitted(value),
                  textInputAction: TextInputAction.send,
                  cursorColor: ThemeColors.mainText,
                  controller: viewModel.inputController,
                  style: TextStyle(color: viewModel.textInputFontColor),
                  decoration: InputDecoration(
                    fillColor: viewModel.textFieldSelected,
                    filled: true,
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: ThemeColors.mainText, width: 1.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: ThemeColors.innerText, width: 1.0),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
