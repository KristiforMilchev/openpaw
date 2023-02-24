import 'package:adoption_board/presentation/views/animal_profile/animal_profile_viewmodel.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class AnimalProfile extends StatelessWidget {
  const AnimalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AnimalProfileViewModel(),
      builder: (context, viewModel, child) => const Placeholder(),
    );
  }
}
