import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';
import 'package:vector_map/vector_map.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../../../domain/Assets/styles.dart';
import 'area_map_viewmodel.dart';

class AreaMap extends StatelessWidget {
  const AreaMap({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AreaMapViewModel(),
      onViewModelReady: (viewModel) => viewModel.ready(rootBundle),
      builder: (context, viewModel, child) => Column(children: [
        Padding(
            // ignore: sort_child_properties_last
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      ThemeColors.cardBackground,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      ThemeColors.mainText,
                    ),
                  ),
                  onPressed: () => viewModel.onFit(),
                  child: const Text('Fit'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      ThemeColors.cardBackground,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      ThemeColors.mainText,
                    ),
                  ),
                  onPressed: () => viewModel.onMode(),
                  child: const Text('Change mode'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      ThemeColors.cardBackground,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      ThemeColors.mainText,
                    ),
                  ),
                  onPressed: () => viewModel.onZoomIn(),
                  child: const Text('Zoom in'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      ThemeColors.cardBackground,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      ThemeColors.mainText,
                    ),
                  ),
                  onPressed: () => viewModel.onzoomOut(),
                  child: const Text('Zoom out'),
                ),
              ],
            ),
            padding: const EdgeInsets.only(bottom: 8)),
        Expanded(
          child: VectorMap(
            controller: viewModel.mapController,
            clickListener: (feature) => print(feature.id),
          ),
        )
      ]),
    );
  }
}
