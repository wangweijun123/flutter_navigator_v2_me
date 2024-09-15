import 'package:flutter/material.dart';
import 'package:flutter_navigator_v2_me/data/veggie.dart';
import 'package:flutter_navigator_v2_me/screen/details.dart';

import '../log_constanst.dart';

class VeggieDetailsPage extends Page {
  final Veggie veggie;

  VeggieDetailsPage({
    required this.veggie,
  }) : super(key: ValueKey(veggie));

  @override
  Route createRoute(BuildContext context) {
    myPrint("createRoute for Detail");
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return VeggieDetailsScreen(veggie: veggie);
      },
    );
  }
}
