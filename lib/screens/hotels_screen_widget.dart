import 'package:booking_app/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreenWidget extends StatelessWidget {
  const HotelScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.5,
      height: size.height * 0.4,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5, bottom: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).colorScheme.onBackground,
              blurRadius: 5,
              spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/one.png'),
              ),
            ),
          ),
          const Gap(10),
          Text(
            'Open Space',
            style: Theme.of(context).textTheme.headline6,
          ),
          const Gap(5),
          Text(
            'London',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Gap(8),
          Text(
            '\$40/ Night',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
