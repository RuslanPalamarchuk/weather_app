  import 'dart:developer';

  import 'package:geolocator/geolocator.dart';

  class Location {
    double? latitude;
    double? longitude;

    Future<void> getCurrentLocation() async {
      try {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        latitude = position.latitude;
        longitude = position.longitude;
        print('Latitude: $latitude, Longitude: $longitude');
      } catch (e) {
        // print('Something goes wrong: $e');
        log('Something goes wrong: $e');
      }
    }
  }
