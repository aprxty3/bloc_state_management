import 'dart:convert';

DataHomeModels dataHomeModelsFromJson(String str) =>
    DataHomeModels.fromJson(json.decode(str));

String dataHomeModelsToJson(DataHomeModels data) => json.encode(data.toJson());

class DataHomeModels {
  String? fullname;
  String? profile;
  String? email;
  String? masakan;
  String? gambarMasakan;
  String? porsi;
  String? tingkatKesulitan;

  DataHomeModels({
    this.fullname,
    this.profile,
    this.email,
    this.masakan,
    this.gambarMasakan,
    this.porsi,
    this.tingkatKesulitan,
  });

  factory DataHomeModels.fromJson(Map<String, dynamic> json) => DataHomeModels(
        fullname: json["fullname"],
        profile: json["profile"],
        email: json["email"],
        masakan: json["masakan"],
        gambarMasakan: json["gambar_masakan"],
        porsi: json["porsi"],
        tingkatKesulitan: json["tingkat_kesulitan"],
      );

  Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "profile": profile,
        "email": email,
        "masakan": masakan,
        "gambar_masakan": gambarMasakan,
        "porsi": porsi,
        "tingkat_kesulitan": tingkatKesulitan,
      };
}
