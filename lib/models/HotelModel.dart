class HotelModel {
  late int id;
  late String name;
  late double latitude;
  late double longitude;

  HotelModel({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) {
    return HotelModel(
      id: json['id'],
      name: json['name'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}
