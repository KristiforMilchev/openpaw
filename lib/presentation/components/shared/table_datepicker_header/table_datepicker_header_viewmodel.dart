import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../../domain/Assets/styles.dart';

class TableDatePickerHeaderViewModel extends BaseViewModel {
  dateFilterSelected(BuildContext context, Function callback) async {
    var results = await showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(
          firstDayOfWeek: 1,
          calendarType: CalendarDatePicker2Type.range,
          selectedDayTextStyle: TextStyle(
              color: ThemeColors.mainText, fontWeight: FontWeight.w700),
          selectedDayHighlightColor: ThemeColors.cardBackground,
          disabledDayTextStyle: TextStyle(
            color: ThemeColors.innerText,
          )),
      initialValue: [],
      dialogSize: const Size(325, 400),
      borderRadius: BorderRadius.circular(15),
    );

    callback.call(results);
  }
}
