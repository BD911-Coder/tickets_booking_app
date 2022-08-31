import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../app_layout.dart';

class CustomContainerWidget extends StatelessWidget {
  final String _continerText;
  final IconData _containerIcon;
  const CustomContainerWidget({
    Key? key,
    required IconData containerIcon,
    required String conteinerText,
  })  : _containerIcon = containerIcon,
        _continerText = conteinerText,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(12),
          horizontal: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
        color: Theme.of(context).toggleButtonsTheme.borderColor,
        borderRadius: BorderRadius.circular(
          AppLayout.getWidth(10),
        ),
      ),
      child: Row(
        children: [
          Icon(
            _containerIcon,
            color: Theme.of(context).iconTheme.color,
          ),
          Gap(
            AppLayout.getWidth(10),
          ),
          Text(
            _continerText,
            style: Theme.of(context).primaryTextTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
