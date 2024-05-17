import 'package:flutter/material.dart';

class HotelTile extends StatefulWidget {
  const HotelTile({super.key});

  @override
  State<HotelTile> createState() => _HotelTileState();
}

class _HotelTileState extends State<HotelTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: const [
          // darker shadow on the bottom right
          BoxShadow(
            blurRadius: 18,
            offset: Offset(5, 5),
            spreadRadius: 5,
          ),

          // lighter shadow on the top left
          BoxShadow(
            blurRadius: 15,
            spreadRadius: -4,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).primaryColor,
            const Color.fromARGB(100, 69, 36, 118),
          ],
        ),
      ),
      child: Column(children: [Text()],),
    );
  }
}
