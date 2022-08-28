import 'package:booking_app/utils/app_layout.dart';
import 'package:flutter/material.dart';

class HotelScreenWidget extends StatelessWidget {
  const HotelScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 06,
      height: 350,
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).primaryColor,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/hotel.jpg'))),
          )
        ],
      ),
    );
  }
}
