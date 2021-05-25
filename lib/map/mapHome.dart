import 'package:first_version/blocs/application_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class MapHome extends StatefulWidget {
  @override
  _MapHomeState createState() => _MapHomeState();
}

class _MapHomeState extends State<MapHome> {
  @override
  Widget build(BuildContext context) {
    final applictionBloc = Provider.of<ApplicationBloc>(context);
    return Scaffold(
      body: (applictionBloc.currentLocation == null)
          ? Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                TextField(
                  decoration: InputDecoration(hintText: 'Search Location'),
                ),
                Container(
                  height: 300,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    myLocationEnabled: true,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(applictionBloc.currentLocation.latitude,
                            applictionBloc.currentLocation.longitude),
                        zoom: 14),
                  ),
                )
              ],
            ),
    );
  }
}
