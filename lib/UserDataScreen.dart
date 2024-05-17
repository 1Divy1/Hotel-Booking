import 'package:flutter/material.dart';
import 'package:hotel_booking_frontend/HotelService.dart';
import 'package:hotel_booking_frontend/ShowHotels.dart';
import 'package:hotel_booking_frontend/models/UserModel.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  TextEditingController userLatitudeCnt = TextEditingController();
  TextEditingController userLongitudeCnt = TextEditingController();
  TextEditingController radiusCnt = TextEditingController();
  UserModel userModel = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.25),
            ),
            child: TextField(
              controller: userLatitudeCnt,
              autocorrect: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                hintText: 'Introduceti latitudinea',
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.25),
            ),
            child: TextField(
              controller: userLongitudeCnt,
              autocorrect: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                hintText: 'Introduceti longitudinea',
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.25),
            ),
            child: TextField(
              controller: radiusCnt,
              autocorrect: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                hintText: 'Introduceti raza cautarii',
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ),
          SizedBox(height: 50),
          Transform.scale(
            scale: 1.25,
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  /*userModel.setUserLatitudeLongitudeRadius(
                      double.tryParse(userLatitudeCnt.text)!,
                      double.tryParse(userLongitudeCnt.text)!,
                      double.tryParse(radiusCnt.text)!);*/

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowHotels(
                        userLat: double.tryParse(userLatitudeCnt.text)!,
                        userLon: double.tryParse(userLongitudeCnt.text)!,
                        radius: double.tryParse(radiusCnt.text)!,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
