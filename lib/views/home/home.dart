part of home_view;

class _Home extends StatelessWidget {
  final HomeViewModel viewModel;

  _Home(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () {
          
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: viewModel.increment,
        backgroundColor: Colors.black,
      ),
    );
  }
}
