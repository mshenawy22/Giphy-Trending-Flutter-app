import 'package:flutter/material.dart';
import '../Entities/giphy_trending.dart';
import '../WidgetHelper/app_bar.dart';
import '../WidgetHelper/image_loader.dart';

class FullImageScreen extends StatefulWidget {
  const FullImageScreen({super.key, required this.gifData});

  final GifData gifData;

  @override
  State<FullImageScreen> createState() => _FullImageScreenState();
}

class _FullImageScreenState extends State<FullImageScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PhotoSharingAppBars.fullImageScreenAppBar,
        body: Center(
            child:
                ImageLoader(imageUrl: widget.gifData.images!.downsized!.url!))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
