import 'package:mvvm_simple_flutter/core/base/base_view_model.dart';
import 'package:mvvm_simple_flutter/resources/tab_icons.dart';

class HomeViewModel extends BaseViewModel {
  int _counter;
  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  HomeViewModel({int counter = 0}) : this._counter = counter;

  int get counter => this._counter;
  set counter(int value) {
    this._counter = value;
    notifyListeners();
  }

  void increment() => this.counter += 1;
}
