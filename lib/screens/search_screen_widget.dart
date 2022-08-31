import 'package:booking_app/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreenWidget extends StatelessWidget {
  const SearchScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getWidth(20),
        ),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            'What are\nyou looking for?',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Gap(
            AppLayout.getHeight(40),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(50),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: size.width * 0.44,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onBackground,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(50),
                    ),
                  ),
                  child: Text(
                    'Airline Tickets',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .button
                        ?.copyWith(color: Colors.blueAccent),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
