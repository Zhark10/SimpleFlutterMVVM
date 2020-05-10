library home_view;

import 'package:mvvm_simple_flutter/core/services/navigator_service.dart';
import 'package:mvvm_simple_flutter/views/map/map_view.dart';
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