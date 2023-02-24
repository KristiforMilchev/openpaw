import 'package:flutter/src/services/asset_bundle.dart';
import 'package:stacked/stacked.dart';
import 'package:vector_map/vector_map.dart';

class AreaMapViewModel extends BaseViewModel {
  VectorMapController? _mapController;
  get mapController => _mapController;

  ready(AssetBundle rootBundle) async {
    String geoJson = await rootBundle.loadString('assets/rooms.geojson');
    MapDataSource ds = await MapDataSource.geoJson(geoJson: geoJson);
    MapLayer layer = MapLayer(dataSource: ds);
    _mapController =
        VectorMapController(layers: [layer], delayToRefreshResolution: 0);

    notifyListeners();
  }

  onFit() {
    _mapController?.fit();
    notifyListeners();
  }

  onMode() {
    VectorMapMode mode = _mapController!.mode == VectorMapMode.autoFit
        ? VectorMapMode.panAndZoom
        : VectorMapMode.autoFit;
    _mapController!.mode = mode;
    notifyListeners();
  }

  onZoomIn() {
    _mapController!.zoomOnCenter(true);
    notifyListeners();
  }

  onzoomOut() {
    _mapController!.zoomOnCenter(false);
    notifyListeners();
  }
}
