import 'package:calendar_date_picker2/calendar_date_picker2.dart';

import 'package:flutter/material.dart';
import 'package:openpaw/presentation/components/shared/icon_label_value/icon_label_value_view.dart';
import 'dart:math' as math;

import '../../../../domain/Assets/styles.dart';

class EventPanel extends StatelessWidget {
  const EventPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Expanded(
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
                      onTap: () => {},
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
          )
        ],
      ),
    );
  }
}
