import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:core/core.dart';
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
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 0.5,
              controller: viewModel.gridController,
              children: [
                for (var i = 0; i < 25; i++)
                  InkWell(
                    onTap: () => viewModel.animalSelected(),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ThemeColors.cardBackground,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: NetworkImage(
                                  "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/58885720/1/?bust=1668702292&width=667",
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          //   padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       IconLabelValue(
                          //         icon: Icons.warning_amber,
                          //         label: "Agressive",
                          //         size: GeneralTheme.getSize(context),
                          //       ),
                          //       IconLabelValue(
                          //         icon: Icons.medical_information_outlined,
                          //         label: "Special Needs",
                          //         size: GeneralTheme.getSize(context),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // Container(
                          //   padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       IconLabelValue(
                          //         icon: Icons.calendar_month_outlined,
                          //         label: "5 years old",
                          //         size: GeneralTheme.getSize(context),
                          //       ),
                          //       IconLabelValue(
                          //         icon: Icons.male,
                          //         label: "Pitbull",
                          //         size: GeneralTheme.getSize(context),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          // Container(
                          //   padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       IconLabelValue(
                          //         icon: Icons.calendar_month_outlined,
                          //         label: "5 years old",
                          //         size: GeneralTheme.getSize(context),
                          //       ),
                          //       IconLabelValue(
                          //         icon: Icons.male,
                          //         label: "Pitbull",
                          //         size: GeneralTheme.getSize(context),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          // Container(
                          //   padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       IconLabelValue(
                          //         icon: Icons.calendar_month_outlined,
                          //         label: "5 years old",
                          //         size: GeneralTheme.getSize(context),
                          //       ),
                          //       IconLabelValue(
                          //         icon: Icons.male,
                          //         label: "Pitbull",
                          //         size: GeneralTheme.getSize(context),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          Center(
                            child: SizedBox(
                              width: 400,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                                  style: GeneralTheme.setText(
                                      size: GeneralTheme.getSize(context)),
                                  maxLines: 4,
                                  textAlign: TextAlign.justify,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Click for details",
                              style: GeneralTheme.setText(),
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ],
            )),
      ),
    );
  }
}
