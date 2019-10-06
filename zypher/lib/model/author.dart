import 'dart:convert';

class Author {
  String id;
  String authorName;
  String authorImageUrl;

  Author({
    this.id,
    this.authorName,
    this.authorImageUrl,
  });

  factory Author.fromJson(String str) => Author.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Author.fromMap(Map<String, dynamic> json) => Author(
    id: json["_id"],
    authorName: json["authorName"],
    authorImageUrl: json["authorImageURL"],
  );

  Map<String, dynamic> toMap() => {
    "_id": id,
    "authorName": authorName,
    "authorImageURL": authorImageUrl,
  };
}
