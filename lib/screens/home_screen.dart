import 'package:airline_booking_app/screens/all_hotels.dart';
import 'package:airline_booking_app/screens/tickets.dart';
import 'package:airline_booking_app/utils/app_info_list.dart';
import 'package:airline_booking_app/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // ignore: non_constant_identifier_names
  Widget HotelCards(String image_name) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: Styles.bluecustom,
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 180,
              height: 230,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Image.asset(
                  image_name,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(10),
            Text(
              "Cruize Hotels",
              style: TextStyle(
                  color: Styles.lightgoldcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.left,
            ),
            const Gap(5),
            Text(
              "London",
              style: Styles.headLineStyle3.copyWith(color: Colors.white),
            ),
            const Gap(5),
            Text(
              "\$100/night",
              style: TextStyle(
                  color: Styles.lightgoldcolor,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Book Tickets",
                            style: Styles.headLineStyle,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/images/img_1.png"))),
                      )
                    ],
                  ),
                  const Gap(20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Search",
                        prefixIcon: const Icon(
                            FluentSystemIcons.ic_fluent_search_filled),
                        prefixIconColor: Styles.bluecustom,
                        filled: true, //<-- SEE HERE
                        fillColor: Styles.lightbluex,
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide:
                                BorderSide(width: 3, color: Styles.bgColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide:
                                BorderSide(width: 3, color: Styles.bgColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                                width: 3, color: Styles.bluecustom))),
                  ),
                  const Gap(30),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Styles.bgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Flights",
                          style: Styles.headLineStyle2,
                        ),
                        Text(
                          "View All",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                  children: tickets
                      .map((oneTicket) => TicketView(ticketDataMap: oneTicket))
                      .toList()),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Styles.bgColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hotels",
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllHotels()),
                    ),
                    child: Text(
                      "View All",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(11),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HotelCards("assets/images/one.png"),
                  HotelCards("assets/images/two.png"),
                  HotelCards("assets/images/three.png")
                ],
              ),
              // child: ListView.builder(
              //     itemCount: 1,
              //     itemBuilder: (context, index) {
              //       return HotelCards("assets/images/one.png");
              //     }),
            )
          ],
        ),
      ),
    );
  }
}
