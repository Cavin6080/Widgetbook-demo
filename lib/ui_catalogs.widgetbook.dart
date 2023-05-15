// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_demo_v3/pages/home_page.dart';
import 'package:widgetbook_demo_v3/ui_catalogs.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        CustomThemeAddon<ThemeData>(
          setting: ThemeSetting<ThemeData>(
            themes: [
              WidgetbookTheme(
                name: 'Dark',
                data: getTheme(),
              ),
              WidgetbookTheme(
                name: 'Light',
                data: getLightTheme(),
              ),
            ],
            activeTheme: WidgetbookTheme(
              name: 'Dark',
              data: getTheme(),
            ),
          ),
        ),
        TextScaleAddon(
          setting: TextScaleSetting(
            textScales: [
              1.0,
              1.5,
              2.0,
            ],
            activeTextScale: 1.0,
          ),
        ),
        FrameAddon(
          setting: FrameSetting(
            frames: [
              NoFrame(),
              DefaultDeviceFrame(
                setting: DeviceSetting(
                  devices: const [
                    Device(
                      name: 'iPhone 13',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532.0,
                          width: 1170.0,
                        ),
                        scaleFactor: 3.0,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: 'S21 Ultra',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 3200.0,
                          width: 1440.0,
                        ),
                        scaleFactor: 3.75,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: '7.9" iPad mini',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1024.0,
                          width: 768.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.tablet,
                    ),
                    Device(
                      name: 'Desktop 1080p',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1080.0,
                          width: 1920.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.desktop,
                    ),
                  ],
                  activeDevice: const Device(
                    name: 'iPhone 13',
                    resolution: Resolution(
                      nativeSize: DeviceSize(
                        height: 2532.0,
                        width: 1170.0,
                      ),
                      scaleFactor: 3.0,
                    ),
                    type: DeviceType.mobile,
                  ),
                ),
              ),
              WidgetbookFrame(
                setting: DeviceSetting(
                  devices: const [
                    Device(
                      name: 'iPhone 13',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532.0,
                          width: 1170.0,
                        ),
                        scaleFactor: 3.0,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: 'S21 Ultra',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 3200.0,
                          width: 1440.0,
                        ),
                        scaleFactor: 3.75,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: '7.9" iPad mini',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1024.0,
                          width: 768.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.tablet,
                    ),
                    Device(
                      name: 'Desktop 1080p',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1080.0,
                          width: 1920.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.desktop,
                    ),
                  ],
                  activeDevice: const Device(
                    name: 'iPhone 13',
                    resolution: Resolution(
                      nativeSize: DeviceSize(
                        height: 2532.0,
                        width: 1170.0,
                      ),
                      scaleFactor: 3.0,
                    ),
                    type: DeviceType.mobile,
                  ),
                ),
              ),
            ],
            activeFrame: NoFrame(),
          ),
        ),
      ],
      directories: [
        WidgetbookFolder(
          name: 'pages',
          children: [
            WidgetbookComponent(
              name: 'HomePage',
              useCases: [
                WidgetbookUseCase(
                  name: 'Home',
                  builder: (context) => homePageUseCase(context),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
