// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:augmented_reality_plugin/augmented_reality_plugin.dart';

import 'index.dart'; // Imports other custom widgets

class ArView extends StatefulWidget {
  const ArView({
    Key? key,
    this.width,
    this.height,
    required this.image,
    required this.buyButtonOnClick,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String image;
  final Future<dynamic> Function() buyButtonOnClick;

  @override
  _ArViewState createState() => _ArViewState();
}

class _ArViewState extends State<ArView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AugmentedRealityPlugin(widget.image.toString()),
        Positioned(
          bottom: 60,
          right: 8,
          child: InkWell(
            onTap: () {
              widget.buyButtonOnClick();
            },
            child: Card(
              color: Color(0xff50A9B0),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
