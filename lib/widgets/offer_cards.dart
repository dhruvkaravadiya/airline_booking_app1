import 'package:airline_booking_app/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class OfferCards extends StatelessWidget {
  const OfferCards({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Row(children: [
      Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(15)),
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(15),
            vertical: AppLayout.getWidth(15)),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(14))),
        height: AppLayout.getHeight(380),
        width: size.width * 0.42,
        child: Column(
          children: [
            Container(
              height: AppLayout.getHeight(190),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/sit.jpg"),
                      fit: BoxFit.cover)),
            ),
            Gap(AppLayout.getHeight(17)),
            Text(
              "Get 30% Discount if u book 3 Business Class Tickets with gifts!!",
              style: Styles.headLineStyle2.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
      Column(children: [
        Stack(
          children: [
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getHeight(15)),
              height: AppLayout.getHeight(203),
              decoration: BoxDecoration(
                  color: const Color(0xFF3AB8B8),
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discount\nfor survey",
                    style: Styles.headLineStyle2.copyWith(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w900),
                  ),
                  const Gap(10),
                  const Text(
                    "Take survey about our services and get discount on tickets",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Positioned(
              right: -50,
              top: -50,
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 18, color: const Color(0xFF189999)),
                    color: Colors.transparent),
              ),
            ),
          ],
        ),
        const Gap(10),
        Container(
          width: size.width * 0.44,
          height: AppLayout.getHeight(165),
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(5),
            vertical: AppLayout.getHeight(15),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
              color: const Color(0xFFEC6545)),
          child: Column(
            children: [
              const Text(
                "Like our Page",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    color: Colors.white),
              ),
              const Gap(25),
              Row(
                children: const [
                  Text(
                    " 😍",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "😘",
                    style: TextStyle(fontSize: 50),
                  ),
                  Text(
                    "😍",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ],
          ),
        )
      ])
    ]);
  }
}
