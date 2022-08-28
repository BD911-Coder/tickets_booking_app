import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketViewWidget extends StatelessWidget {
  const TicketViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  print(
                                      'The width is ${(constraints.constrainWidth() / 6).floor()}');
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        'LDN',
                        style: Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  ),
                  Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'New York',
                          style: Theme.of(context).primaryTextTheme.bodyText2,
                        ),
                      ),
                      Text(
                        '8H 30M',
                        style: Theme.of(context).primaryTextTheme.bodyText2,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'London',
                          textAlign: TextAlign.end,
                          style: Theme.of(context).primaryTextTheme.bodyText2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Theme.of(context).primaryColorDark,
              child: Row(
                children: const [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}