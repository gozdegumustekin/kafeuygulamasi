import 'package:flutter/material.dart';

extension MyExtension on BuildContext{
  MediaQueryData get _mediaQuery => MediaQuery.of(this);
  double get height =>_mediaQuery.size.height;
  double get width =>_mediaQuery.size.width;

}