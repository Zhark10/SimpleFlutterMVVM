part of home_view;

class _Home extends StatelessWidget {
  final HomeViewModel viewModel;
  final navigation = NavigatorService();

  _Home(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text('POP'),
          onPressed: () {
            navigation.navigateToPage(MaterialPageRoute(builder: (context) => MapView()));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: viewModel.increment,
        backgroundColor: Colors.black,
      ),
    );
  }
}
