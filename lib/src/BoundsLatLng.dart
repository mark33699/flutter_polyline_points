// To parse this JSON data, do
//
//     final boundsLatLng = boundsLatLngFromJson(jsonString);

import 'dart:convert';

BoundsLatLng boundsLatLngFromJson(String str) => BoundsLatLng.fromJson(json.decode(str));

String boundsLatLngToJson(BoundsLatLng data) => json.encode(data.toJson());

class BoundsLatLng {
  BoundsLatLng({
    required this.northeast,
    required this.southwest,
  });

  final LatLng northeast;
  final LatLng southwest;

  factory BoundsLatLng.fromJson(Map<String, dynamic> json) => BoundsLatLng(
    northeast: LatLng.fromJson(json["northeast"]),
    southwest: LatLng.fromJson(json["southwest"]),
  );

  Map<String, dynamic> toJson() => {
    "northeast": northeast.toJson(),
    "southwest": southwest.toJson(),
  };
}

class LatLng {
  LatLng({
    required this.lat,
    required this.lng,
  });

  final double lat;
  final double lng;

  factory LatLng.fromJson(Map<String, dynamic> json) => LatLng(
    lat: json["lat"].toDouble(),
    lng: json["lng"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}
