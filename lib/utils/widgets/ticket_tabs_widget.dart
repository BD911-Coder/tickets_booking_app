import 'package:flutter/material.dart';

import '../app_layout.dart';

class CustomTicketTabs extends StatelessWidget {
  const CustomTicketTabs(
      {Key? key, required String firstTabTitle, required String secondTabTitle})
      : _firstTabTitle = firstTabTitle,
        _secondTabTitle = secondTabTitle,
        super(key: key);
  final String _firstTabTitle;
  final String _secondTabTitle;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(50),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * 0.44,
            height: size.height * 0.04,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(
                  AppLayout.getHeight(50),
                ),
              ),
            ),
            child: Center(
              child: Text(
                '${_firstTabTitle}',
                style: Theme.of(context)
                    .primaryTextTheme
                    .button
                    ?.copyWith(color: Colors.blueAccent),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * 0.44,
            height: size.height * 0.04,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(
                  AppLayout.getHeight(50),
                ),
              ),
            ),
            child: Center(
              child: Text(
                '${_secondTabTitle}',
                style: Theme.of(context)
                    .primaryTextTheme
                    .button
                    ?.copyWith(color: Colors.blueAccent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
