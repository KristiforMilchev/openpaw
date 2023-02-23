import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

import 'package:flutter/material.dart';
import 'package:openpaw/presentation/components/game_notes/game_notes_view.dart';
import 'package:openpaw/presentation/components/shared/icon_label_value/icon_label_value_view.dart';
import 'package:openpaw/presentation/components/shared/input_box/input_box.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;

import '../../../../domain/Assets/styles.dart';
import 'event_panel_viewmodel.dart';

class EventPanel extends StatelessWidget {
  const EventPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => EventPanelViewModel(),
      builder: (context, viewModel, child) => Container(
        color: ThemeColors.cardBackground,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                  child: CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.multi,
                  dayTextStyle: TextStyle(
                    color: ThemeColors.mainText,
                  ),
                  weekdayLabelTextStyle: TextStyle(
                    color: ThemeColors.innerText,
                  ),
                  controlsTextStyle: TextStyle(
                    color: ThemeColors.mainText,
                  ),
                ),
                initialValue: [],
              )),
            ),
            Visibility(
              visible: viewModel.isCreateVisible,
              child: Expanded(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                      color: ThemeColors.mainThemeBackground,
                      borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.all(10),
                  child: ListView(
                    children: [
                      Container(
                        color: ThemeColors.mainThemeBackground,
                        child: InkWell(
                          onTap: () => viewModel.createNewEvent(),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: IconLabelValue(
                              label: "Create new event",
                              icon: Icons.add_home_work_outlined,
                              color: ThemeColors.innerText,
                              size: GeneralTheme.getSize(context),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: ThemeColors.cardBackground,
                            borderRadius: BorderRadius.circular(6)),
                        child: Text(
                          "Monday 6, Feabruary, 2023 - 25 Notes",
                          style: GeneralTheme.setText(size: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 90,
                            decoration: BoxDecoration(
                              color: ThemeColors.activeMenu,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(6),
                                topRight: Radius.circular(6),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "adjwadadawjdjawlkdaw",
                            style: GeneralTheme.setText(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: viewModel.isAddNewVisible,
              child: Expanded(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                      color: ThemeColors.mainThemeBackground,
                      borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.all(50),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InputBox(
                        label: "Title",
                        placeholder: "Add your event title",
                        onChange: viewModel.titleChanged,
                      ),
                      ColorPicker(
                        // Use the screenPickerColor as start color.
                        color: ThemeColors.activeMenu,
                        // Update the screenPickerColor using the callback.
                        onColorChanged: (Color color) =>
                            viewModel.colorSelected(color),
                        width: 44,
                        height: 44,
                        borderRadius: 22,
                        showColorName: true,
                        pickerTypeTextStyle: GeneralTheme.setText(),
                        colorNameTextStyle: GeneralTheme.setText(),
                        heading: Text(
                          'Select color',
                          style: GeneralTheme.setText(),
                        ),
                        subheading: Text(
                          'Select color shade',
                          style: GeneralTheme.setText(),
                        ),
                      ),
                      IconLabelValue(
                        label: "Add a note",
                        icon: Icons.note,
                        size: GeneralTheme.getSize(context),
                      ),
                      Focus(
                        onFocusChange: (value) => viewModel.focusChanged(value),
                        child: TextField(
                          minLines: 6,
                          maxLines: 12,
                          onChanged: (value) => viewModel.noteBoxChanged(value),
                          onSubmitted: (value) =>
                              viewModel.noteBoxSubmitted(value),
                          textInputAction: TextInputAction.send,
                          cursorColor: ThemeColors.mainText,
                          controller: viewModel.inputController,
                          style: TextStyle(color: viewModel.textInputFontColor),
                          decoration: InputDecoration(
                            fillColor: viewModel.textFieldSelected,
                            filled: true,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ThemeColors.mainText, width: 1.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ThemeColors.innerText, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: ThemeColors.cardBackground,
                            child: InkWell(
                              onTap: () => viewModel.cancelCreate(),
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: IconLabelValue(
                                  label: "Cancel",
                                  icon: Icons.cancel,
                                  color: ThemeColors.innerText,
                                  size: GeneralTheme.getSize(context),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            color: ThemeColors.cardBackground,
                            child: InkWell(
                              onTap: () => viewModel.createNewEvent(),
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: IconLabelValue(
                                  label: "Create",
                                  icon: Icons.add_home_work_outlined,
                                  color: ThemeColors.innerText,
                                  size: GeneralTheme.getSize(context),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
