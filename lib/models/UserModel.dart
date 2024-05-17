class UserModel {

  late String userName;
  late double userLat;
  late double userLon;
  late double radius;

  setUserLatitudeLongitudeRadius(double lat, double lon, double rad) {
    userLat = lat;
    userLon = lon;
    radius = rad;
    print('latitude $userLat');
    print('longitude $userLon');
    print('radius $radius');
  }
}