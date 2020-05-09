library header_widget;

import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

part 'header_mobile.dart';
part 'header_tablet.dart';
part 'header_desktop.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: _HeaderMobile(),
        desktop: _HeaderDesktop(),
        tablet: _HeaderTablet(),
    );
  }
}