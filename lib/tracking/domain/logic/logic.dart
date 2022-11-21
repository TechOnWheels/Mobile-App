import 'dart:ui';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class DatabasehelperTracking {
  addMarker(Set<Marker> _markers, List<LatLng> latLen, i) {
    _markers.add(
      // added markers
      Marker(
        markerId: MarkerId(i.toString()),
        position: latLen[i],
        infoWindow: InfoWindow(
          title: 'HOTEL',
          snippet: '5 Star Hotel',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
  }

  addPoint(final Set<Polyline> _polyline, List<LatLng> latLen) {
    _polyline.add(
      Polyline(
        polylineId: PolylineId('1'),
        points: latLen,
        color: Color(0xffE57355),
      ),
    );
  }
}
