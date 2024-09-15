import 'package:flutter/material.dart';
import 'package:flutter_navigator_v2_me/data/veggie.dart';
import 'package:flutter_navigator_v2_me/screen/details.dart';

class VeggieDetailsPage extends Page {
  final Veggie veggie;

  VeggieDetailsPage({
    required this.veggie,
  }) : super(key: ValueKey(veggie));

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return VeggieDetailsScreen(veggie: veggie);
      },
    );
  }
}
