library home_view;

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mvvm_simple_flutter/core/services/routes.dart';
import 'package:mvvm_simple_flutter/theme/app_theme.dart';
import 'package:mvvm_simple_flutter/widgets/bottom-bar/bottom_bar.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:flutter/material.dart';
import 'home_view_model.dart';

part 'home.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = HomeViewModel();
    return ViewModelProvider<HomeViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return _Home(viewModel);
      }
    );
  }
}