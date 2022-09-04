import 'package:booking_app/screens/ticket_view_screen.dart';
import 'package:booking_app/utils/app_info_list.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/widgets/ticket_tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _customTextTheme = Theme.of(context).textTheme.bodyText2;
    final _customContainerTheme = Theme.of(context).colorScheme.background;
    Theme.of(context).colorScheme.primaryContainer;
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(
                AppLayout.getHeight(40),
              ),
              Text(
                'Tickets',
                style: Theme.of(context).primaryTextTheme.displayMedium,
              ),
              Gap(
                AppLayout.getHeight(16),
              ),
              const CustomTicketTabs(
                  firstTabTitle: 'Upcoming', secondTabTitle: 'Previous'),
              Gap(
                AppLayout.getHeight(40),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketViewScreen(
                  tickets: ticketList[0],
                  isColorChange: false,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                ),
                color: _customContainerTheme,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'BD911-Coder',
                              style: _customTextTheme,
                            ),
                            Gap(
                              AppLayout.getHeight(5),
                            ),
                            Text(
                              'BD911-Coder',
                              style: _customTextTheme,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
