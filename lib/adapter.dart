import 'package:flutter/material.dart';

enum ScreenSize { Small, Normal, Large, ExtraLarge }
class FormFactor {
  ScreenSize getSize(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth > 990) return ScreenSize.ExtraLarge;//1410
  if (deviceWidth > 730) return ScreenSize.Large;
  if (deviceWidth > 300) return ScreenSize.Normal;
  return ScreenSize.Small;
  }
}