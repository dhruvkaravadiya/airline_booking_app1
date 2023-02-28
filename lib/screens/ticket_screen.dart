import 'package:airline_booking_app/screens/tickets.dart';
import 'package:airline_booking_app/utils/app_info_list.dart';
import 'package:airline_booking_app/utils/app_layout.dart';
import 'package:airline_booking_app/utils/app_styles.dart';
import 'package:airline_booking_app/widgets/dashed_line.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/ticket_screen_toggle.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  get ticketDataMap => null;
  Widget leftTexts(String headText, String childText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headText,
          style: TextStyle(
              color: Styles.textColor,
              fontSize: 17,
              fontWeight: FontWeight.w500),
        ),
        Text(
          childText,
          style: const TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  Widget rightTexts(String headText, String childText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          headText,
          style: TextStyle(
              color: Styles.textColor,
              fontSize: 17,
              fontWeight: FontWeight.w500),
        ),
        Text(
          childText,
          style: const TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  Widget blueCircle() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.5, color: Colors.blue)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(15),
            children: [
              const Gap(40),
              Text(
                "Tickets",
                style: Styles.headLineStyle.copyWith(fontSize: 30),
              ),
              const Gap(20),
              const TicketScreenToggle(),
              const Gap(20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                padding: const EdgeInsets.all(11),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        leftTexts("NYC", "New York"),
                        Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Row(
                                  children: [
                                    blueCircle(),
                                    const Text(
                                      "- - - - - - - - ",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    blueCircle()
                                  ],
                                ),
                                Transform.rotate(
                                  angle: 1.6,
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "8H 40M",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                        rightTexts("LDN", "London"),
                      ],
                    ),
                    const Gap(15),
                    const DashedLine(),
                    const Gap(19),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        leftTexts("1 May", "Date"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "08:00 AM",
                              style: TextStyle(
                                  color: Styles.textColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              "Departure Time",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        rightTexts("23", "Number")
                      ],
                    ),
                    const Gap(11),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Divider(
                    height: 0,
                    color: Colors.grey.shade400,
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                padding: const EdgeInsets.fromLTRB(11, 15, 11, 15),
                color: Colors.white,
                child: Column(children: [
                  const Gap(2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      leftTexts("Dhruv Karavadiya", "Passenger"),
                      rightTexts("5221 76452321", "Passport"),
                    ],
                  ),
                  const Gap(20),
                  const DashedLine(),
                ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                padding: const EdgeInsets.fromLTRB(11, 5, 11, 10),
                color: Colors.white,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      leftTexts("221221 123123", "A2BFGR4"),
                      rightTexts("E-ticket Number", "Booking Code"),
                    ],
                  ),
                  const Gap(20),
                  const DashedLine(),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 40,
                                  child: Image.asset("assets/images/visa.png")),
                              Text(
                                " **** 1234",
                                style: TextStyle(
                                    color: Styles.textColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const Text(
                            "Payment Method",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      rightTexts("\$255.99", "Price")
                    ],
                  ),
                  const Gap(20),
                ]),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Divider(
                    height: 0,
                    color: Colors.grey.shade400,
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                padding: const EdgeInsets.fromLTRB(11, 25, 11, 25),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/dhruvkaravadiya',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              const Gap(25),
              Row(
                  children: tickets2
                      .map((oneTicket) => TicketView(ticketDataMap: oneTicket))
                      .toList()),
            ],
          ),
          Positioned(
              left: AppLayout.getHeight(15),
              top: AppLayout.getHeight(300),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              )),
          Positioned(
              right: AppLayout.getHeight(15),
              top: AppLayout.getHeight(300),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ))
        ],
      ),
    ));
  }
}
