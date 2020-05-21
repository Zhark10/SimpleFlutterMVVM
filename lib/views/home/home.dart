part of home_view;

class _Home extends StatelessWidget {
  final HomeViewModel viewModel;
  final navigation = Navigation();

  _Home(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            FlatButton(child: Text('Go to Map'), onPressed: navigation.goToMapView),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: viewModel.increment,
        backgroundColor: Colors.black,
      ),
    );
  }

   Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: viewModel.tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            
          },
        ),
      ],
    );
  }
}
