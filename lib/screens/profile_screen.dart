import 'package:airline_booking_app/utils/app_layout.dart';
import 'package:airline_booking_app/widgets/dashed_line.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  Widget leftTexts(String headText, String childText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headText,
          style: TextStyle(
              color: Styles.textColor,
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        Text(
          childText,
          style: const TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
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
              fontWeight: FontWeight.w600),
        ),
        Text(
          childText,
          style: const TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Gap(35),
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.asset("assets/images/img_1.png", height: 80),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle,
                        ),
                        const Gap(5),
                        Text(
                          "New-York",
                          style: Styles.headLineStyle3.copyWith(fontSize: 14),
                        ),
                        const Gap(8),
                        Container(
                          width: 135,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(100)),
                            color: const Color(0xFFFEF4F3),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    // ignore: use_full_hex_values_for_flutter_colors
                                    color: Color(0xff5267999)),
                                child: const Icon(
                                  FluentSystemIcons.ic_fluent_shield_filled,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              Gap(
                                AppLayout.getHeight(5),
                              ),
                              const Text("Premium Status",
                                  style: TextStyle(
                                      color: Color(0xFF526799),
                                      fontWeight: FontWeight.w600))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.topRight,
                    child: Text(
                      "              Edit",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
          Divider(
            color: Colors.grey.shade400,
          ),
          const Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: const Color(0xff264cd2))),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "You'v got a new reward",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "You have 30 flights in a year",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(26),
          Text(
            "Accumulated Miles",
            style: Styles.headLineStyle2.copyWith(fontSize: 22),
          ),
          const Gap(26),
          const Center(
              child: Text(
            "192312",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          )),
          const Gap(23),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " Miles Accrued ",
                style: Styles.headLineStyle3,
              ),
              Text(
                " 23 May 2022 ",
                style: Styles.headLineStyle3,
              ),
            ],
          ),
          const Divider(),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leftTexts(" 23 042", " Miles"),
              rightTexts("Airline CO ", "Received from "),
            ],
          ),
          const Gap(10),
          const SizedBox(width: double.infinity, child: DashedLine()),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leftTexts(" 20", " Miles"),
              rightTexts("McDonald's ", "Received from "),
            ],
          ),
          const Gap(10),
          const SizedBox(width: double.infinity, child: DashedLine()),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leftTexts(" 12 345", " Miles"),
              rightTexts("Exuma ", "Received from "),
            ],
          ),
          const Gap(20),
          Center(
            child: Text(
              "How to get more miles?",
              style: Styles.headLineStyle2.copyWith(color: Styles.bluecustom),
            ),
          )
        ],
      ),
    ));
  }
}
