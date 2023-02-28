import 'package:airline_booking_app/utils/app_styles.dart';
import 'package:airline_booking_app/widgets/offer_cards.dart';
import 'package:airline_booking_app/widgets/toggle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Widget flight_icontext(IconData flightIcon, String iconString) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(flightIcon, color: VeryLightBlue),
          const Text("   Departure",
              style: TextStyle(fontWeight: FontWeight.w600))
        ],
      ),
    );
  }

  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            const Gap(40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "What are \nyou looking for?",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const Gap(25),
            // Row(
            //   children: [
            //     Expanded(
            //         child: Container(
            //       color: Colors.amber,
            //     )),
            //     Expanded(
            //         child: Container(
            //       color: Colors.red,
            //     )),
            //   ],
            // ),

            //Toggle Button
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Styles.lightbluex),
              padding: const EdgeInsets.all(5),
              child: const CustomToggleSwitch(),
            ),
            const Gap(20),
            flight_icontext(Icons.flight_takeoff, "Departure"),
            const Gap(14),
            flight_icontext(Icons.flight_land, "Arrival"),
            const Gap(25),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xD91130CE),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Find Tickets",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const Gap(25),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Styles.bgColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Upcoming Flights",
                    style: Styles.headLineStyle2.copyWith(fontSize: 18),
                  ),
                  Text(
                    "View All ",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                ],
              ),
            ),
            const Gap(13),
            const OfferCards(),
          ],
        ),
      ),
    );
  }
}
