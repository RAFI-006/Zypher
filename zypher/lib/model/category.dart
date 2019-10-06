import 'dart:convert';

class Category {
  String displayName;
  String categoryImageUrl;
  String categoryName;

  Category({
    this.displayName,
    this.categoryImageUrl,
    this.categoryName,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
    displayName: json["displayName"],
    categoryImageUrl: json["categoryImageURL"],
    categoryName: json["categoryName"],
  );

  Map<String, dynamic> toMap() => {
    "displayName": displayName,
    "categoryImageURL": categoryImageUrl,
    "categoryName": categoryName,
  };
}
