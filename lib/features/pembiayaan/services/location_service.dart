import 'package:dartz/dartz.dart';
import 'package:efosm/app/domain/entities/location.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:geocoding/geocoding.dart' as g;
import 'package:location/location.dart';

class LocationService {
  static Future<Either<Failure, OurLocation>> getLocation() async {
    try {
      final location = Location();
      final canAccess = await getPermission();
      if (!canAccess) {
        return left(
          Failure.permission(message: l10n.noLocationAccess, code: '04'),
        );
      }
      final locationData = await location.getLocation().timeout(
            const Duration(seconds: 30),
            onTimeout: () => throw Failure.timedOut(
              message: l10n.failedFetchLocation,
              code: '04',
            ),
          );
      if (locationData.latitude == null || locationData.longitude == null) {
        return left(
            Failure.permission(message: l10n.noLocationAccess, code: '04'));
      }
      var locationName = '';
      try {
        final placemarks = await g
            .placemarkFromCoordinates(
                locationData.latitude!, locationData.latitude!)
            .timeout(const Duration(seconds: 15));
        locationName =
            '${placemarks.first.subLocality}, ${placemarks.first.locality}, ${placemarks.first.country}';
      } catch (e) {
        print(e);
      }
      final siegHeil = OurLocation(
        latitude: locationData.latitude.toString(),
        longitude: locationData.longitude.toString(),
        locationName: locationName,
      );
      return right(siegHeil);
    } catch (e) {
      print(e);
      return left(
          Failure.permission(message: l10n.noLocationAccess, code: '04'));
    }
  }

  static Future<bool> getPermission() async {
    final location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return false;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return false;
      }
    }

    return true;
  }
}
