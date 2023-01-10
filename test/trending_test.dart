import 'package:flutter_test/flutter_test.dart';
import 'package:photo_sharing_app/Models/giphs_model.dart';


void main() {
  _trendingImagesTest();
  _trendingImagesfetchingTest();
}

_trendingImagesTest() async {
  final GiphsModel model = GiphsModel();
  test('success status is returned on the initial load ', ()async
  {
    await model.fetchTrendingImages();
    expect(
      model.giphyTrendingAlbum!.meta!.status,
      200,
    );

  });

  test('The maximum giphs per page are returned when starting the app ', ()async
  {
    expect(
      model.giphyTrendingAlbum!.data!.length,
      giphsPerPage,
    );

  });

  test('everytime fetchTrendingImages is called , the length should of the list should double', ()async
  {
    await model.fetchTrendingImages();
    expect(
      model.giphyTrendingAlbum!.meta!.status,
      200,
    );
    expect(
      model.giphyTrendingAlbum!.data!.length,
      giphsPerPage *2,
    );

  });

}

_trendingImagesfetchingTest() async {
  final GiphsModel model = GiphsModel();


  test('call the fetchTrendingImages five times , the length should of the list should be *five ', ()async
  {
    //clear giphyTrendingAlbum first
    model.giphyTrendingAlbum = null;
    await model.fetchTrendingImages();
    await model.fetchTrendingImages();
    await model.fetchTrendingImages();
    await model.fetchTrendingImages();
    await model.fetchTrendingImages();
    expect(
      model.giphyTrendingAlbum!.meta!.status,
      200,
    );
    expect(
      model.giphyTrendingAlbum!.data!.length,
      giphsPerPage *5,
    );

  });


}
