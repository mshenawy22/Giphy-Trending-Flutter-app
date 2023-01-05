import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/text_styles.dart';
import '../Entities/giphy_trending.dart';
import '../Models/GiphsModel.dart';
import '../Models/base_model.dart';
import '../WidgetHelper/appBar.dart';
import '../WidgetHelper/imageLoader.dart';
import '../Constants/constants.dart';

class FullImageScreen extends StatefulWidget {
  const FullImageScreen({super.key , required this.gifData});

  final GifData gifData;


  @override
  State<FullImageScreen> createState() => _FullImageScreenState();
}

class _FullImageScreenState extends State<FullImageScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

        return  Scaffold(
            appBar: PhotoSharingAppBars.fullImageScreenAppBar,
            body: Center(
               child :   imageLoader(    imageUrl: widget.gifData!.images!.downsized!.url!)

            )

          // This trailing comma makes auto-formatting nicer for build methods.
        );


  }
}