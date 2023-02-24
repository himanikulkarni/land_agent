// To parse this JSON data, do
//
//     final districtListModel = districtListModelFromJson(jsonString);

import 'dart:convert';

DistrictListModel districtListModelFromJson(String str) =>
    DistrictListModel.fromJson(json.decode(str));

String districtListModelToJson(DistrictListModel data) =>
    json.encode(data.toJson());

class DistrictListModel {
  DistrictListModel({
    required this.data,
    required this.status,
    required this.remarks,
  });

  List<Datum> data;
  String status;
  String remarks;

  factory DistrictListModel.fromJson(Map<String, dynamic> json) =>
      DistrictListModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        status: json["status"],
        remarks: json["remarks"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "status": status,
        "remarks": remarks,
      };
}

class Datum {
  Datum({
    required this.id,
    required this.districtName,
  });

  String id;
  String districtName;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        districtName: json["district_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "district_name": districtName,
      };
}
