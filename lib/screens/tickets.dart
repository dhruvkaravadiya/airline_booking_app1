import 'package:airline_booking_app/utils/app_layout.dart';
import 'package:airline_booking_app/utils/app_styles.dart';
import 'package:airline_booking_app/widgets/circles_plane.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketDataMap;
  const TicketView({super.key, required this.ticketDataMap});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width * .85,
        height: 200,
        child: Container(
          margin: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              /*
          Blue Part of Ticket
          */
              Container(
                decoration: BoxDecoration(
                    color: Styles.bluecustom,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ticketDataMap['from']['code'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        const CirclesPlanes(),
                        Stack(),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                                height: 24,
                                child: LayoutBuilder(builder:
                                    (BuildContext context,
                                        BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white),
                                              ),
                                            )),
                                  );
                                })),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )),
                        const CirclesPlanes(),
                        Expanded(child: Container()),
                        Text(
                          "LDN",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    const Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(ticketDataMap['from']['name'],
                              style: Styles.textStyle
                                  .copyWith(color: Colors.white)),
                        ),
                        Text(
                          ticketDataMap['flying_time'],
                          style: Styles.textStyle.copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(ticketDataMap['to']['name'],
                              textAlign: TextAlign.end,
                              style: Styles.textStyle
                                  .copyWith(color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /*
        Middle Part of Ticket
        */

              Container(
                padding: const EdgeInsets.only(top: 6),
                color: const Color(0xFFF37B67),
                child: Row(
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                    ),
                    Expanded(
                        child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          20,
                          (index) => const SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: Colors.white)),
                              )),
                    )),
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              /*
        Bottom Part of Ticket (Orange)
        */
              Container(
                decoration: BoxDecoration(
                    color: Styles.orangecustom,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ticketDataMap['date'],
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 17)
                            // Styles.headLineStyle3.copyWith(color: Colors.white),
                            ),
                        const Gap(5),
                        Text(
                          "Date",
                          style: Styles.textStyle.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ticketDataMap['departure_time'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 17),
                          // Styles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          "Departure Time",
                          style: Styles.textStyle.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(ticketDataMap['number'].toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 17)
                            // Styles.headLineStyle3.copyWith(color: Colors.white),
                            ),
                        const Gap(5),
                        Text(
                          "Number",
                          style: Styles.textStyle.copyWith(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
