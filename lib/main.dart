import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Entities/giphy_trending.dart';
import 'Models/GiphsModel.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

import 'Models/base_model.dart';


void main() {
  runApp(
  MultiProvider(
      providers :[
        ChangeNotifierProvider<BaseModel>(
          create: (_) =>  BaseModel() ,
          // child: MyApp(),
        ),
        ChangeNotifierProvider<GiphsModel>(
          create: (_) =>  GiphsModel() ,
          // child: MyApp(),
        ),
      ],
      child : const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
          if (model.giphySearchAlbum != null ) {

        for (var element in model.giphySearchAlbum!.data!) {
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

                title: const Text('Giphy Sharing app'),
                
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
