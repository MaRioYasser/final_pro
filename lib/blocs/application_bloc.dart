// import 'package:first_version/services/geolocator_service.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:geolocator/geolocator.dart';
//
// class ApplicationBloc with ChangeNotifier{
//   final geolocatorService = GeolocatorService();
//
//   Position currentLocation;
//
//
//   ApplicationBloc(){
//     setCurrentLocation();
//   }
//
//   setCurrentLocation() async{
//     currentLocation = await geolocatorService.getCurrentLocation();
//     notifyListeners();
//   }
//
// }