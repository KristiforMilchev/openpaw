import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

import '../../../domain/Assets/styles.dart';
import '../shared/icon_label_value/icon_label_value_view.dart';
import 'animal_card_inner_pannel_viewmodel.dart';

class AnimalCardInnerPanel extends StatelessWidget {
  const AnimalCardInnerPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) => viewModel.ready(context),
      viewModelBuilder: () => AnimalCardInnerPanelviewModel(),
      builder: (context, viewModel, child) => Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(viewModel.getInnerPadding()),
            child: Row(
              children: [
                Expanded(
                  flex: viewModel.getInformationFlex(),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconLabelValue(
                            label: "Information",
                            icon: Icons.location_on_outlined,
                            size: GeneralTheme.getSize(context),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          IconLabelValue(
                            label: "Floor A",
                            icon: Icons.home,
                            value: "Cell B",
                            size: GeneralTheme.getSize(context),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          IconLabelValue(
                            label: "Current Location",
                            icon: Icons.location_on,
                            value: "Out for a walk",
                            size: GeneralTheme.getSize(context),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          IconLabelValue(
                            label: "Breed",
                            icon: Icons.toys,
                            value: "Pitbull",
                            size: GeneralTheme.getSize(context),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          IconLabelValue(
                            label: "Age",
                            icon: Icons.insert_chart_outlined_sharp,
                            value: "6 years old",
                            size: GeneralTheme.getSize(context),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          IconLabelValue(
                            label: "Favorite food",
                            icon: Icons.food_bank_outlined,
                            value: "Chio Chips",
                            size: GeneralTheme.getSize(context),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          IconLabelValue(
                            label: "Favorite toy",
                            icon: Icons.toys,
                            value: "Socks",
                            size: GeneralTheme.getSize(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: viewModel.getMedicalFlex(),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconLabelValue(
                            label: "Medical conditions",
                            icon: Icons.medical_information,
                            size: viewModel.getHeadingFontSize(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ThemeColors.cardBackground,
                            ),
                            child: SizedBox(
                              height: 200,
                              width: viewModel.getMedicalPanelWidth(),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    for (var i = 0; i < 25; i++)
                                      Container(
                                        padding: EdgeInsets.all(
                                            viewModel.getMedicalBoxPadding()),
                                        margin: EdgeInsets.all(
                                            viewModel.getMedicalBoxPadding()),
                                        color: ThemeColors.mainThemeBackground,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: ThemeColors
                                                    .mainThemeBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              child: Icon(
                                                Icons.medical_services_outlined,
                                                color: ThemeColors.innerText,
                                                size: GeneralTheme.getSize(
                                                        context) +
                                                    3,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            SizedBox(
                                              width: viewModel.getBoxWidth(),
                                              child: Padding(
                                                padding: EdgeInsets.all(10),
                                                child: Text(
                                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                                                  style: GeneralTheme.setText(
                                                      size: viewModel
                                                          .getFontSize()),
                                                  maxLines: 1,
                                                  textAlign: TextAlign.justify,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => viewModel.openDetails(),
            child: IconLabelValue(
                icon: Icons.description_sharp, label: "View Details"),
          )
        ],
      ),
    );
  }
}
