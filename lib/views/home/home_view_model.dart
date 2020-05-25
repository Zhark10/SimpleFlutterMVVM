import 'dart:async';
import 'package:mvvm_simple_flutter/core/base/base_view_model.dart';
import 'package:mvvm_simple_flutter/resources/tab_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeViewModel extends BaseViewModel {
  List<TabIconData> tabIconsList = TabIconData.tabIconsList;
  Completer<GoogleMapController> mapController = Completer();

  final CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Future<void> goToTheLake() async {
    final GoogleMapController controller = await mapController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
