import 'dart:developer';

import 'package:airline_booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http;

import '../models/hotel_data.dart';

class AllHotels extends StatefulWidget {
  const AllHotels({super.key});

  @override
  State<AllHotels> createState() => _AllHotelsState();
}

class _AllHotelsState extends State<AllHotels> {
  // List<HotelData> hoteldatalist = [];
  // Future<List<HotelData>> getHotelApi() async {
  //   final response = await http.get(
  //       Uri.parse("https://63fcb519677c41587311f08f.mockapi.io/hotels/hotels"));
  //   var data = jsonDecode(response.body.toString());
  //   if (response.statusCode == 200) {
  //     for (Map i in data) {
  //       hoteldatalist.add(HotelData.fromJson(i));
  //     }
  //     return hoteldatalist;
  //   } else {
  //     return hoteldatalist;
  //   }
  // }
  List<HotelData>? hotels;
  var isLoaded = false;
  @override
  void initState() {
    // get data from API
    super.initState();
  }

  Uri baseUrl =
      Uri.parse('https://63fcb519677c41587311f08f.mockapi.io/hotels/hotels');
  final _client = http.Client();

  Future<List<HotelData>?> getHotels() async {
    var response = await _client.get(baseUrl);
    if (response.statusCode == 200) {
      var json = response.body;
      log(json.toString());
      return hotelDataFromJson(json);
    }
  }

  // ignore: non_constant_identifier_names
  Widget HotelCards(
      {required image, required name, required price, required destination}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: Styles.bluecustom,
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.all(13),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 130,
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  image.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(15),
                Text(
                  destination.toString(),
                  style: TextStyle(
                      color: Styles.lightgoldcolor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
                const Gap(7),
                Text(
                  name.toString().substring(0, 5),
                  style: Styles.headLineStyle3
                      .copyWith(color: Colors.white, fontSize: 15),
                ),
                const Gap(20),
                Text(
                  "\$ ${price.toString()}/night",
                  style: TextStyle(
                      color: Styles.lightgoldcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          return const SafeArea(
            child: Scaffold(
              body: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Styles.orangecustom,
            ),
            body: ListView.builder(
              itemBuilder: (context, index) {
                return HotelCards(
                    image: snapshot.data![index].image,
                    name: snapshot.data![index].name,
                    price: snapshot.data![index].price,
                    destination: snapshot.data![index].destination);
              },
              itemCount: snapshot.data!.length,
            ),
          );
        }
      },
      future: getHotels(),
    );
  }
}
