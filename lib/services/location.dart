import 'package:geolocator/geolocator.dart';

class Location {
  double latitude, longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation,
      );
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print("Access denied");
    }
  }
}
