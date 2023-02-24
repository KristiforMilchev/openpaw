import 'package:adoption_board/presentation/components/tag_list/tag_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:stacked/stacked.dart';

import '../shared/icon_label_value/icon_label_value_view.dart';
import '../shared/responsive_builder/responsive_builder.dart';

class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) => viewModel.ready(context),
      viewModelBuilder: () => TagListViewModel(),
      builder: (context, viewModel, child) => Container(
        height: 80,
        padding: EdgeInsets.all(25),
        child: ListView(scrollDirection: Axis.horizontal, children: [
          IconLabelValue(
            icon: Icons.type_specimen,
            label: "Dog",
            size: viewModel.getFontSize(),
          ),
          IconLabelValue(
            icon: Icons.male,
            label: "Male",
            size: viewModel.getFontSize(),
          ),
          IconLabelValue(
            icon: Icons.adb,
            label: "Pitbull",
            size: viewModel.getFontSize(),
          ),
          IconLabelValue(
            icon: Icons.bookmark,
            label: "Agressive toward male",
            size: viewModel.getFontSize(),
          ),
          IconLabelValue(
            icon: Icons.bookmark,
            label: "Agressive toward male",
            size: viewModel.getFontSize(),
          ),
          IconLabelValue(
            icon: Icons.bookmark,
            label: "Agressive toward male",
            size: viewModel.getFontSize(),
          ),
          IconLabelValue(
            icon: Icons.bookmark,
            label: "Agressive toward male",
            size: viewModel.getFontSize(),
          ),
          IconLabelValue(
            icon: Icons.bookmark,
            label: "Agressive toward male",
            size: viewModel.getFontSize(),
          ),
          IconLabelValue(
            icon: Icons.bookmark,
            label: "Agressive toward male",
            size: viewModel.getFontSize(),
          ),
        ]),
      ),
    );
  }
}
