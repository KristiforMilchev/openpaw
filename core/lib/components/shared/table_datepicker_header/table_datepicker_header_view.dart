import 'package:core/components/shared/table_datepicker_header/table_datepicker_header_viewmodel.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

import '../../../../../domain/Assets/styles.dart';

class TableDatePickerHeaderView extends StatelessWidget {
  final int flex;
  final TextAlign alignment;
  final IconData icon;
  final String label;
  final Function callback;

  const TableDatePickerHeaderView(
      {super.key,
      required this.flex,
      required this.alignment,
      required this.icon,
      required this.label,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: (() => TableDatePickerHeaderViewModel()),
      builder: (context, viewModel, child) => Expanded(
        flex: flex,
        child: InkWell(
          onTap: (() => viewModel.dateFilterSelected(context, callback)),
          child: Row(
            children: [
              Expanded(
                flex: 0,
                child: GeneralTheme.tableHeaderIcon(
                    icon, null, ThemeColors.mainText),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  label,
                  style: GeneralTheme.inputDecorationText,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
