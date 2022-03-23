import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewWidget extends StatefulWidget {
  const MapViewWidget({Key? key}) : super(key: key);

  @override
  State<MapViewWidget> createState() => _MapViewWidgetState();
}

class _MapViewWidgetState extends State<MapViewWidget> {
  late GoogleMapController mapController;

  final LatLng _zooMarket = const LatLng(54.09701772730844, 28.30357108778828);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final Set<Marker> _markers = {
    const Marker(
        markerId: MarkerId("ZooMarket"),
        position: LatLng(54.09701772730844, 28.30357108778828),
        infoWindow: InfoWindow(title: "ZooMarket", snippet: "Zhodino"))
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MapView"),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _zooMarket,
          zoom: 19,
        ),
        markers: _markers,
      ),
    );
  }
}
