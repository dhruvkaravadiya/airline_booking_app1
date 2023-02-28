// To parse this JSON data, do
//
//     final hotelData = hotelDataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<HotelData> hotelDataFromJson(String str) =>
    List<HotelData>.from(json.decode(str).map((x) => HotelData.fromJson(x)));

String hotelDataToJson(List<HotelData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HotelData {
  HotelData({
    required this.name,
    required this.destination,
    required this.image,
    required this.price,
    required this.id,
  });

  final String name;
  final String destination;
  final String image;
  final String price;
  final String id;

  factory HotelData.fromJson(Map<String, dynamic> json) => HotelData(
        name: json["name"],
        destination: json["destination"],
        image: json["image"],
        price: json["price"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "destination": destination,
        "image": image,
        "price": price,
        "id": id,
      };
}
