import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:map/map.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;

import 'package:vector_map/vector_map.dart';

class HomeViewModel extends BaseViewModel {
  VectorMapController _controller =
      VectorMapController(mode: VectorMapMode.autoFit);

  get mapController => _controller;

  getMap(BuildContext context, int x, int y, int z) {
    final tilesInZoom = math.pow(2.0, z).floor();

    while (x < 0) {
      x += tilesInZoom;
    }
    while (y < 0) {
      y += tilesInZoom;
    }

    x %= tilesInZoom;
    y %= tilesInZoom;

    //Google Maps
    final url =
        'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';

    return Image.network(
      url,
      width: 600,
      height: 600,
    );
  }

  ready() {}
}
