import 'package:booking_app/screens/hotels_screen.dart';
import 'package:booking_app/screens/ticket_view_screen.dart';
import 'package:booking_app/utils/app_info_list.dart';
import 'package:booking_app/utils/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String welcomeMessage = 'Good Morning';
    String homeScreenMessage = 'Book Tickets';
    final size = AppLayout.getSize(context);

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          welcomeMessage,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const Gap(5),
                        Text(
                          homeScreenMessage,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/ticketly.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      const Gap(16),
                      Text(
                        'Search',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                const Gap(25),
                const DoubleTextWidget(
                  widgetTitle: 'Upcoming Flights',
                  widgetSubtitle: 'View All',
                ),
                const Gap(13),
                SizedBox(
                  width: AppLayout.getWidth(390),
                  height: AppLayout.getHeight(190),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: ticketList
                          .map((ticketList) => TicketViewScreen(
                                tickets: ticketList,
                                isColorChange: true,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const DoubleTextWidget(
              widgetTitle: 'Book Hotel',
              widgetSubtitle: 'View All',
            ),
          ),
          const Gap(5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((hotelList) => HotelScreen(hotel: hotelList))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
