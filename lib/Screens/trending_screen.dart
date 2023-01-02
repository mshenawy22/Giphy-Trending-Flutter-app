import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/text_styles.dart';
import '../Models/GiphsModel.dart';
import '../Models/base_model.dart';
import '../WidgetHelper/imageLoader.dart';
import '../Constants/constants.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});


  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {

  // late Future<GiphyTrending> giphyTrendingAlbum;
  // late Future<GiphyTrending> giphySearchAlbum;

  @override
  void initState() {
    super.initState();
    context.read<GiphsModel>().fetchTrendingImages();
  }

  @override
  Widget build(BuildContext context) {
    return
      Consumer<GiphsModel>(builder: (context, model, child)
      {
        var children  = <Widget>[] ;
        int index = 0;

        // print (snapshot.data!.data![0].images!.original!.webp!);
        if (model.giphySearchAlbum != null ) {
            children.add(
             Padding (
              padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
              child :   Text('Most Trending Giphs of today'  , style: trendingScreenHeading)
             )
            );
          for (var element in model.giphySearchAlbum!.data!) {
            index += 1;
            children.add(
              Center (
                child :  Container(
                    // margin: const EdgeInsets.all(200.0),
                    padding : const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        // borderRadius : BorderRadius.circular(10),
                        color: Colors.orange,
                        shape: BoxShape.circle
                    ),
                    child: Text('$index',
                        style: photoIndexBold))
              )
              );
            children.add(
              Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child:
                  imageLoader(imageUrl : element.images!.original!.webp!)),
            );
          }
        }
        // else {
        //
        //   children.add(Center (
        //       child : LinearProgressIndicator()
        //   ));
        // }

        return  Scaffold(
            appBar:  EasySearchBar(

              title: const Text(appTitle),
               backgroundColor : Colors.yellow,
              onSearch: (value) => model.fetchTrendingImages(),
            )
            ,
            body: Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
                child:
                model.loadingStatus == LoadingStatusE.idle?
                ListView(
                  children: children ,
                ):                  // By default, show a loading spinner.
                const Center (

                    child : LinearProgressIndicator()
                )

            )

          // This trailing comma makes auto-formatting nicer for build methods.
        );
      });

  }
}