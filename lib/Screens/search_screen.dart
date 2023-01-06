import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/GiphsModel.dart';
import '../Models/base_model.dart';
import '../Constants/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // late Future<GiphyTrending> giphyTrendingAlbum;
  // late Future<GiphyTrending> giphySearchAlbum;

  @override
  void initState() {
    super.initState();
    GiphsModel giphsModel =  GiphsModel();
    // giphyTrendingAlbum = giphsModel.fetchImages();
    // giphySearchAlbum = giphsModel.searchImages('girl');

  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return
      Consumer<GiphsModel>(builder: (context, model, child)
      {
        var children  = <Widget>[] ;
        int index = 0;

        // print (snapshot.data!.data![0].images!.original!.webp!);
        if (model.giphyTrendingAlbum != null ) {

          for (var element in model.giphyTrendingAlbum!.data!) {
            index += 1;
            children.add(Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text('$index .',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold))));
            children.add(
              Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Image.network(element.images!.original!.webp!)),
            );
          }
        }
        else {
          children.add(const CircularProgressIndicator());
        }

        return  Scaffold(
            appBar:  EasySearchBar(

              title: const Text(appTitle),

              onSearch: (value) => model.searchImages(value),
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
                const CircularProgressIndicator()

            )

          // This trailing comma makes auto-formatting nicer for build methods.
        );
      });

  }
}