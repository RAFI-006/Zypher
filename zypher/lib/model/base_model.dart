import 'dart:convert';

import 'package:zypher/model/segments.dart';
import 'author.dart';
import 'category.dart';
import 'themes.dart';

class BaseModel {
  int status;
  List<Author> authors;
  List<Themes> themes;
  List<Category> category;
  List<Segment> segments;

  BaseModel({
    this.status,
    this.authors,
    this.themes,
    this.category,
    this.segments,
  });

  factory BaseModel.fromJson(String str) => BaseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BaseModel.fromMap(Map<String, dynamic> json) => BaseModel(
      status: json["status"],
      authors: List<Author>.from(json["authors"].map((x) => Author.fromMap(x))),
  themes: List<Themes>.from(json["themes"].map((x) => Themes.fromMap(x))),
  category: List<Category>.from(json["category"].map((x) => Category.fromMap(x))),
  segments: List<Segment>.from(json["segments"].map((x) => Segment.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "status": status,
    "authors": List<dynamic>.from(authors.map((x) => x.toMap())),
    "themes": List<dynamic>.from(themes.map((x) => x.toMap())),
    "category": List<dynamic>.from(category.map((x) => x.toMap())),
    "segments": List<dynamic>.from(segments.map((x) => x.toMap())),
  };
}

