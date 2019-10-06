import 'dart:convert';

class Segment {
  String segmentName;
  String segmentSubtitle;
  String tagName;
  dynamic books;

  Segment({
    this.segmentName,
    this.segmentSubtitle,
    this.tagName,
    this.books,
  });

  factory Segment.fromJson(String str) => Segment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Segment.fromMap(Map<String, dynamic> json) => Segment(
      segmentName: json["segmentName"],
      segmentSubtitle: json["segmentSubtitle"],
      tagName: json["tagName"],
      books: json["books"],
  );

  Map<String, dynamic> toMap() => {
    "segmentName": segmentName,
    "segmentSubtitle": segmentSubtitle,
    "tagName": tagName,
    "books": books,
  };
}
