import 'package:flutter/cupertino.dart';

enum LoadingStatusE { idle, busy, error }

class BaseModel extends ChangeNotifier {
  LoadingStatusE loadingStatus = LoadingStatusE.idle;

  BaseModel();
}
