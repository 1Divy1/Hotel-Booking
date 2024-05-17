import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_frontend/HotelService.dart';

class ShowHotels extends StatefulWidget {
  double userLat, userLon, radius;

  ShowHotels({
    super.key,
    required this.userLat,
    required this.userLon,
    required this.radius,
  });

  @override
  State<ShowHotels> createState() => _ShowHotelsState();
}

class _ShowHotelsState extends State<ShowHotels> {
  @override
  void initState() {
    super.initState();
    getHotelsWithinRadius(widget.userLat, widget.userLon, widget.radius);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
