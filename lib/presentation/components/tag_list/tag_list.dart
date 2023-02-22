import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:openpaw/presentation/components/shared/responsive_builder/responsive_builder.dart';
import 'package:openpaw/presentation/components/tag_list/tag_list_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../shared/icon_label_value/icon_label_value_view.dart';

class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TagListViewModel(),
      builder: (context, viewModel, child) => ResponsiveBuilder(
          fullSize: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconLabelValue(
                icon: Icons.merge_type,
                label: "Dog",
              ),
              IconLabelValue(
                icon: Icons.male,
                label: "Male",
              ),
              IconLabelValue(
                icon: Icons.update,
                label: "10-05-2023 -> 12:30",
              ),
              IconLabelValue(
                icon: Icons.bookmark,
                label: "Agressive toward male",
              ),
              IconLabelValue(
                icon: Icons.sentiment_satisfied_rounded,
                label: "Good health condition",
              ),
              IconLabelValue(
                icon: Icons.fastfood_outlined,
                label: "Fed",
              ),
            ],
          ),
          smallDesktop: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconLabelValue(
                    icon: Icons.merge_type,
                    label: "Dog",
                  ),
                  IconLabelValue(
                    icon: Icons.male,
                    label: "Male",
                  ),
                  IconLabelValue(
                    icon: Icons.update,
                    label: "10-05-2023 -> 12:30",
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconLabelValue(
                    icon: Icons.bookmark,
                    label: "Agressive toward male",
                  ),
                  IconLabelValue(
                    icon: Icons.sentiment_satisfied_rounded,
                    label: "Good health condition",
                  ),
                  IconLabelValue(
                    icon: Icons.fastfood_outlined,
                    label: "Fed",
                  ),
                ],
              )
            ],
          )),
    );
  }
}
