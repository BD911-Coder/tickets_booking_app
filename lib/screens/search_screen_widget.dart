import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/widgets/custom_container_widget.dart';
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
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(50),
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
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
                      'Airline Tickets',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .button
                          ?.copyWith(color: Colors.blueAccent),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
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
                      'hotels',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .button
                          ?.copyWith(color: Colors.blueAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const CustomContainerWidget(
              containerIcon: Icons.flight_takeoff_rounded,
              conteinerText: 'Departure')
        ],
      ),
    );
  }
}
