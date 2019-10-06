import 'dart:convert';

class Themes {
  String id;
  String themeName;
  String themeImageUrl;

  Themes({
    this.id,
    this.themeName,
    this.themeImageUrl,
  });

  factory Themes.fromJson(String str) => Themes.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Themes.fromMap(Map<String, dynamic> json) => Themes(
    id: json["_id"],
    themeName: json["themeName"],
    themeImageUrl: json["themeImageURL"],
  );

  Map<String, dynamic> toMap() => {
    "_id": id,
    "themeName": themeName,
    "themeImageURL": themeImageUrl,
  };
}
