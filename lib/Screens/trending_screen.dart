import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/text_styles.dart';
import '../Models/GiphsModel.dart';
import '../Models/base_model.dart';
import '../WidgetHelper/imageLoader.dart';
import '../Constants/constants.dart';
import 'full_image_screen.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});


  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {

  // late Future<GiphyTrending> giphyTrendingAlbum;
  // late Future<GiphyTrending> giphySearchAlbum;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    context.read<GiphsModel>().fetchTrendingImages();
    _scrollController = ScrollController(keepScrollOffset: true);
    _scrollController.addListener(() async {

      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
       var pos =  _scrollController.position ;
       var currentScrollOffset = _scrollController.offset!;
        if (context.read<GiphsModel>().offset <= MaximumOfssets) { // on bottom scroll API Call until last page
          context.read<GiphsModel>().fetchTrendingImages();
          // _scrollController.createScrollPosition(physics, context.read(), pos);
        }
      }
    });

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
                        color: Colors.yellow,
                        shape: BoxShape.circle
                    ),
                    child: Text('$index',
                        style: photoIndexBold))
              )
              );
            if (element.images?.original?.webp !=null) {
              children.add(
                  Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                      child:
                          SizedBox (
                                height: double.parse(element.images!.fixedHeightDownsampled!.height!),
                          child :
                          GestureDetector(
                            child:
                                 imageLoader(  imageUrl: element.images!.fixedHeightDownsampled!.url!,),

                             onTap : ()=>
                                 {
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) =>  FullImageScreen(gifData: element,)),
                                   )
                                 }

                          )
                          )

                          )

                );
            }
            else
              {
                children.add(
                   const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child:
                          Center (
                              child :Text('This Gif is not available at the moment')))
                );

              }
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
                    shrinkWrap : true,
                  controller: _scrollController,
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