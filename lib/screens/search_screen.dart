import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/widgets/custom_container_widget.dart';
import 'package:booking_app/utils/widgets/ticket_tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
          const CustomTicketTabs(
              firstTabTitle: 'Airline Ticket', secondTabTitle: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          const CustomContainerWidget(
              containerIcon: Icons.flight_takeoff_rounded,
              conteinerText: 'Departure'),
          Gap(
            AppLayout.getHeight(15),
          ),
          const CustomContainerWidget(
              containerIcon: Icons.flight_land_rounded,
              conteinerText: 'Arrival'),
          Gap(
            AppLayout.getHeight(20),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(12),
                horizontal: AppLayout.getHeight(12)),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
            ),
            child: Center(
              child: Text(
                'Find Ticket',
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
            ),
          ),
          const Gap(40),
          const DoubleTextWidget(
            widgetTitle: 'Upcoming Flights',
            widgetSubtitle: 'View All',
          ),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(0.1)),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.onBackground,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/sits.png'),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      '%20 discount on the early booking of this flight. Don\'t miss out this chance.',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(176),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(18),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                blurRadius: 10,
                                spreadRadius: 1,
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount for survey!',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Gap(
                              AppLayout.getHeight(10),
                            ),
                            Text(
                              'Complete the survey for exclusive offers!',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              'Let\'s start',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(208),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.onBackground,
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                        const Gap(5),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '🥂 ',
                                style: TextStyle(fontSize: 26),
                              ),
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '😍',
                                    style: TextStyle(fontSize: 50),
                                  ),
                                ],
                              ),
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: ' 🥂',
                                    style: TextStyle(fontSize: 26),
                                  ),
                                ],
                              ),
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Rate us!',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
