part of home_view;

class _Home extends StatelessWidget {
  final HomeViewModel viewModel;
  final navigation = Navigation();

  _Home(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FutureBuilder<bool>(
        future: viewModel.getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          } else {
            return Stack(
              children: <Widget>[
                Container(
                  color: AppTheme.background,
                ),
                bottomBar(),
              ],
            );
          }
        },
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
          changeIndex: (int index) {},
        ),
      ],
    );
  }
}
