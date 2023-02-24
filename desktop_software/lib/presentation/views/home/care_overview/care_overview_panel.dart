import 'package:core/components/animal_card/animal_card.dart';
import 'package:core/components/shared/data_grid_header/data_grid_header.dart';
import 'package:core/domain/Assets/styles.dart';
import 'package:flutter/material.dart';

class CareOverviewPanel extends StatelessWidget {
  const CareOverviewPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.cardBackground,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(25, 5, 25, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Care overview",
                  style: GeneralTheme.setText(size: 20),
                ),
                Icon(Icons.ac_unit),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              DataGridHeader(
                icon: Icons.filter_alt_rounded,
                label: "Name",
              ),
              DataGridHeader(
                icon: Icons.filter_alt_rounded,
                label: "Type",
              ),
              DataGridHeader(
                icon: Icons.filter_alt_rounded,
                label: "Gender",
              ),
              DataGridHeader(
                icon: Icons.filter_alt_rounded,
                label: "Updated At",
              ),
              DataGridHeader(
                icon: Icons.filter_alt_rounded,
                label: "Known issues",
              ),
              DataGridHeader(
                icon: Icons.filter_alt_rounded,
                label: "Status",
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                for (var i = 0; i < 50; i++) AnimalCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
