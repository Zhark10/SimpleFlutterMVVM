import 'package:mvvm_simple_flutter/views/map/map_view.dart';

import 'package:flutter/material.dart';

import 'navigator_service.dart';

class Navigation {
  final navigation = NavigatorService();
 
  Future<T> goToMapView<T>() async {
    return await navigation.navigateToPage(
        MaterialPageRoute(builder: (context) => MapView()));
  }
}
