import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:openpaw/presentation/components/animal_card_inner_panel/animal_card_inner_panel.dart';
import 'package:openpaw/presentation/components/shared/icon_label_value/icon_label_value_view.dart';
import 'package:openpaw/presentation/components/tag_list/tag_list.dart';
import 'package:stacked/stacked.dart';

import '../../../domain/Assets/styles.dart';
import 'animal_card_viewmodel.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) => viewModel.ready(context),
      viewModelBuilder: () => AnimalCardViewModel(),
      builder: (context, viewModel, child) => InkWell(
        onTap: () => viewModel.cardState(),
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(25, 5, 25, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: ThemeColors.mainThemeBackground,
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: viewModel.getImageWidth(),
                      height: viewModel.getImageWidth(),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://googleflutter.com/sample_image.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      "Roko",
                      style: GeneralTheme.setText(
                          size: GeneralTheme.getSize(context)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: SizedBox(
                        width: viewModel.getBoxWidth(),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                            style: GeneralTheme.setText(
                                size: GeneralTheme.getSize(context)),
                            maxLines: viewModel.getMaxLines(),
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    TagList()
                  ],
                )
              ],
            ),
            Visibility(
              visible: viewModel.isOpen,
              child: const AnimalCardInnerPanel(),
            ),
          ]),
        ),
      ),
    );
  }
}
