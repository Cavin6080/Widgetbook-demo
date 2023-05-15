import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookApp.material(
  devices: [
    Apple.iPhone13,
    Samsung.s21ultra,
    Apple.iPadMini,
    Desktop.desktop1080p,
  ],
  textScaleFactors: [1, 1.5, 2],
)
late int notUsed;

@WidgetbookTheme(name: 'Dark', isDefault: true)
ThemeData getTheme() => ThemeData.dark();

@WidgetbookTheme(name: 'Light', isDefault: false)
ThemeData getLightTheme() => ThemeData.light();
