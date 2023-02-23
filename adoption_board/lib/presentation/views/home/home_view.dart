import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

import '../../../domain/Assets/styles.dart';
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
              children: const [],
            )),
      ),
    );
  }
}
