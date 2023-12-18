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

import 'package:imageview360/imageview360.dart';

import 'index.dart'; // Imports other custom widgets

class View360 extends StatefulWidget {
  const View360({
    Key? key,
    this.width,
    this.height,
    required this.listImages,
    required this.buyButtonOnClick,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> listImages;
  final Future<dynamic> Function() buyButtonOnClick;

  @override
  _View360State createState() => _View360State();
}

class _View360State extends State<View360> {
  List<ImageProvider> imageList = <ImageProvider>[];

  @override
  void initState() {
    addDataToList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () async {
                      context.safePop();
                    },
                    child: Icon(Icons.arrow_back_ios_rounded)),
                Image.network(
                  "https://cdn-icons-png.flaticon.com/512/1758/1758455.png",
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
          Spacer(),
          ImageView360(
            key: UniqueKey(),
            imageList: imageList,
            autoRotate: false, //Optional
            rotationCount: 2, //Optional
            rotationDirection: RotationDirection.anticlockwise, //Optional
            frameChangeDuration: Duration(milliseconds: 50), //Optional
            swipeSensitivity: 2, //Optional
            allowSwipeToRotate: true, //Optional
            onImageIndexChanged: (currentImageIndex) {
              //Optional
              print("currentImageIndex: $currentImageIndex");
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
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
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  addDataToList() {
    widget.listImages.forEach((element) {
      imageList.add(NetworkImage(element));
    });
    setState(() {});
  }
}
