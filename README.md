# GiphyTrends - Flutter App

GiphyTrends is a Flutter application that allows users to explore the most trending GIFs and search for GIFs using keywords. With a user-friendly interface and seamless integration with the Giphy API, GiphyTrends provides a fun and engaging experience for discovering and sharing animated GIFs.


## Features

- **Trending GIFs**: Browse and view the most popular and trending GIFs across various categories.
- **Search**: Enter keywords in the search bar to find GIFs related to specific topics, emotions, or events.
- **Preview and Share**: Tap on a GIF to preview it and easily share it with friends through various messaging and social media platforms.
- **Favorites**: Mark your favorite GIFs and access them quickly in the Favorites section for future reference.
- **User Profiles**: Create a user profile, customize it with avatars, and save your favorite GIFs to your profile for personalized collections.
- **User Interaction**: Like, comment, and interact with other users by sharing GIFs and following their profiles.

## Installation

1. Ensure that you have Flutter installed on your development environment. For installation instructions, please refer to the official Flutter documentation: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

2. Clone the GiphyTrends repository:

```shell
git clone https://github.com/your-username/giphytrends.git
```

3. Navigate to the project directory:

```shell
cd giphytrends
```

4. Fetch the dependencies:

```shell
flutter pub get
```

5. Run the app on your preferred device or emulator:

```shell
flutter run
```

## Configuration

To use the Giphy API, you need to obtain an API key. Follow these steps to configure your API key:

1. Visit the [Giphy Developers](https://developers.giphy.com/) website and create an account or log in.

2. Once logged in, create a new app to generate an API key.

3. Open the `lib/utils/api.dart` file in your project and replace the `YOUR_API_KEY` with your actual Giphy API key.

```dart
class API {
  static const String baseUrl = 'https://api.giphy.com/v1/gifs';
  static const String apiKey = 'YOUR_API_KEY';
}
```

4. Save the file and rebuild the app. Your Giphy API key will now be used to make requests to the Giphy API.

## Dependencies

GiphyTrends relies on the following dependencies:

- [flutter_bloc](https://pub.dev/packages/flutter_bloc): State management library for Flutter applications.
- [http](https://pub.dev/packages/http): A package for making HTTP requests.
- [cached_network_image](https://pub.dev/packages/cached_network_image): Caches network images to improve performance.
- [share](https://pub.dev/packages/share): A plugin to share content from the app.
- [flutter_svg](https://pub.dev/packages/flutter_svg): Renders SVG files into Flutter widgets.

The project's `pubspec.yaml` file includes all the necessary dependencies. Make sure to run `flutter pub get` after cloning the repository to fetch the required packages.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.

To contribute to the GiphyTrends project, follow these steps:

1. Fork the repository.

2. Create a new branch:

```shell
git checkout -b my-branch
```

3. Make your modifications and commit them:

```shell
git commit -m "My changes"
```

4. Push your branch to GitHub:

```

```shell
git push origin my-branch
```

5. Open a pull request on the main repository.

Please ensure that your code follows the project's coding conventions and includes appropriate tests.

## License

The GiphyTrends Flutter App is licensed under the [MIT License](LICENSE).

## Acknowledgements

- The GiphyTrends app utilizes the [Giphy API](https://developers.giphy.com/docs/api/) to fetch GIFs and related data. Thank you to Giphy for providing an extensive collection of animated GIFs.
- This project is inspired by various GIF search and sharing applications available in the market. We appreciate the contributions of the open-source community in creating innovative and entertaining apps.

## Contact

If you have any questions, suggestions, or feedback, please feel free to contact the development team at giphytrends@example.com. We appreciate your interest in GiphyTrends and look forward to hearing from you!
