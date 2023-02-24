import 'package:core/components/area_map/area_map_view.dart';
import 'package:core/domain/Assets/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:openpaw/presentation/views/home/care_overview/care_overview_panel.dart';
import 'package:openpaw/presentation/views/home/panels/event_panel.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (viewModel) => viewModel.ready(),
      builder: (context, viewModel, child) => Material(
        child: Container(
            color: ThemeColors.mainThemeBackground,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(flex: 2, child: EventPanel()),
                Expanded(flex: 3, child: AreaMap()),
                Expanded(flex: 2, child: CareOverviewPanel()),
              ],
            )),
      ),
    );
  }
}
