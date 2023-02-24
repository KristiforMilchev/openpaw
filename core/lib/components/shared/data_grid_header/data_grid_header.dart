import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:stacked/stacked.dart';

import '../../../../domain/Assets/styles.dart';
import 'data_grid_header_viewmodel.dart';

class DataGridHeader extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color? labelColor;
  final Color? iconColor;

  const DataGridHeader({
    super.key,
    required this.icon,
    required this.label,
    this.iconColor,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => DataGridHeaderViewModel(),
      builder: (context, viewModel, child) => InkWell(
        onHover: (value) => viewModel.mouseOver(value),
        onTap: () => viewModel.filterSelected(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              label,
              style: GeneralTheme.setText(
                  textColor: viewModel.hover
                      ? ThemeColors.mainText
                      : ThemeColors.innerText),
            ),
            Icon(
              icon,
              color: viewModel.hover
                  ? ThemeColors.mainText
                  : ThemeColors.innerText,
            )
          ],
        ),
      ),
    );
  }
}
