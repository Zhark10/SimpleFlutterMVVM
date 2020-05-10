library map_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:flutter/material.dart';
import 'map_view_model.dart';

part 'map.dart';

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MapViewModel viewModel = MapViewModel();
    return ViewModelProvider<MapViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return _Map(viewModel);
      }
    );
  }
}