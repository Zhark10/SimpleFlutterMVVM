part of map_view;

class _Map extends StatelessWidget {
  final MapViewModel viewModel;

  _Map(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('MapMobile')),
    );
  }
}