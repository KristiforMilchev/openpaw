import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:openpaw/presentation/components/shared/responsive_builder/responsive_builder_viewmodel.dart';
import 'package:stacked/stacked.dart';

// ignore: must_be_immutable
class ResponsiveBuilder extends StatelessWidget {
  late Widget? verySmallDesktop;
  late Widget? smallDesktop;
  final Widget fullSize;

  ResponsiveBuilder(
      {super.key,
      required this.fullSize,
      this.smallDesktop,
      this.verySmallDesktop});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ResponsiveBuilderViewModel(),
        builder: (context, viewModel, child) {
          if (MediaQuery.of(context).size.width <= 1366) {
            return verySmallDesktop ?? smallDesktop ?? fullSize;
          }

          if (MediaQuery.of(context).size.width <= 1920) {
            return smallDesktop ?? fullSize;
          }

          return fullSize;
        });
  }
}
