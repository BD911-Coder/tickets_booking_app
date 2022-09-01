import 'package:flutter/material.dart';

class DoubleTextWidget extends StatelessWidget {
  const DoubleTextWidget({Key? key, required String widgetTitle, required String widgetSubtitle})
      : _widgetTitle = widgetTitle,
      _widgetSubtitle = widgetSubtitle,
        super(key: key);
  final String _widgetTitle;
  final String _widgetSubtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${_widgetTitle}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        InkWell(
          onTap: () => print('Tapped'),
          child: Text(
            '${_widgetSubtitle}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
