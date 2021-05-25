// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    this.username,
    this.location,
    this.phone,
    this.id,
    this.createdAt,
  });

  String username;
  String location;
  String phone;
  String id;
  DateTime createdAt;

  factory DataModel.fromJson(Map<String, dynamic> json) {

  return DataModel(
    username: json["username"],
    location: json["location"],
    phone: json["phone"],
    id: json["id"],
    createdAt: DateTime.parse(json["createdAt"]
  ));
  }

  Map<String, dynamic> toJson() => {
    "username": username,
    "location": location,
    "phone": phone,
    "id": id,
    "createdAt": createdAt.toIso8601String(),
  };
}
