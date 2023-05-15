import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Home', type: HomePage)
Widget homePageUseCase(BuildContext context) {
  return HomePage(
    title: context.knobs.text(label: 'Title', initialValue: 'Title'),
    incrementBy: context.knobs
            .nullableSlider(
              label: 'Increment By',
              min: 0,
              initialValue: 5,
              max: 10,
              divisions: 10,
            )
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
      options: [Icons.add, Icons.crop_square_sharp, Icons.circle],
    ),
    showToolTip: context.knobs.boolean(
      label: 'Show Increment Tool Tip',
      description:
          'This is the tooltip that is displayed when hovering over the increment button',
      initialValue: true,
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    this.title = "Counter App",
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
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: widget.showToolTip ? 'Increment' : null,
        child: Icon(widget.iconData ?? Icons.add),
      ),
    );
  }
}
