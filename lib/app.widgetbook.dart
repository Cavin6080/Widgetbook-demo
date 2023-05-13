import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const KnobsExample());
}

class KnobsExample extends StatelessWidget {
  const KnobsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        TextScaleAddon(
          setting: TextScaleSetting.firstAsSelected(
            textScales: [
              1.0,
              1.25,
              1.5,
            ],
          ),
        ),
        MaterialThemeAddon(
          setting: MaterialThemeSetting.firstAsSelected(
            themes: [
              WidgetbookTheme(
                data: ThemeData.dark(),
                name: 'dark',
              ),
              WidgetbookTheme(
                data: ThemeData.light(),
                name: 'light',
              ),
            ],
          ),
        ),
        FrameAddon(
          setting: FrameSetting.firstAsSelected(
            frames: [
              DefaultDeviceFrame(
                setting: DeviceSetting(
                  devices: [
                    Apple.iPhone13,
                    Samsung.s21ultra,
                    Apple.iPadMini,
                    Desktop.desktop1080p,
                  ],
                  activeDevice: Apple.iPhone13,
                ),
              ),
              NoFrame(),
              WidgetbookFrame(
                setting: DeviceSetting(
                  devices: [
                    Apple.iPhone13,
                    Samsung.s21ultra,
                    Apple.iPadMini,
                    Desktop.desktop1080p,
                  ],
                  activeDevice: Apple.iPhone13,
                ),
              ),
            ],
          ),
        ),
      ],
      directories: [
        WidgetbookCategory(
          name: 'Pages',
          children: [
            WidgetbookComponent(
              name: 'Onboarding',
              useCases: [
                WidgetbookUseCase(
                  name: 'Home Page',
                  builder: (context) => MyHomePage(
                    title: context.knobs
                        .text(label: 'Title', initialValue: 'Title'),
                    incrementBy: context.knobs
                            .nullableSlider(
                                label: 'Increment By',
                                min: 0,
                                initialValue: 5,
                                max: 10,
                                divisions: 10)
                            ?.toInt() ??
                        0,
                    countLabel: context.knobs.nullableText(
                      label: 'Count Label',
                      initialValue: 'Current Count',
                      description:
                          'This is the text that appears above the current count of increments',
                    ),
                    iconData: context.knobs.options(
                      label: 'Icon',
                      options: [
                        Icons.add,
                        Icons.crop_square_sharp,
                        Icons.circle
                      ],
                    ),
                    showToolTip: context.knobs.boolean(
                      label: 'Show Increment Tool Tip',
                      description:
                          'This is the tooltip that is displayed when hovering over the increment button',
                      initialValue: true,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
    this.incrementBy = 1,
    this.countLabel,
    this.iconData,
    this.showToolTip = true,
  }) : super(key: key);

  final String title;
  final int incrementBy;
  final String? countLabel;
  final IconData? iconData;
  final bool showToolTip;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += widget.incrementBy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.countLabel ??
                  'You have pushed the button this many times:',
            ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: widget.showToolTip ? 'Increment' : null,
      //   child: Icon(widget.iconData ?? Icons.add),
      // ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        TextScaleAddon(
          setting: TextScaleSetting.firstAsSelected(
            textScales: [
              1.0,
              1.25,
              1.5,
            ],
          ),
        )
      ],
      directories: [],
    );
  }
}
