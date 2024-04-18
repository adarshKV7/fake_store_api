// // To parse this JSON data, do
// //
// //     final fakeStoreModel = fakeStoreModelFromJson(jsonString);

// import 'dart:convert';

// List<FakeStoreModel> fakeStoreModelFromJson(String str) =>
//     List<FakeStoreModel>.from(
//         json.decode(str).map((x) => FakeStoreModel.fromJson(x)));

// String fakeStoreModelToJson(List<FakeStoreModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class FakeStoreModel {
//   int? id;
//   String? title;
//   double? price;
//   String? description;
//   String? category;
//   String? image;
//   Rating? rating;

//   FakeStoreModel({
//     this.id,
//     this.title,
//     this.price,
//     this.description,
//     this.category,
//     this.image,
//     this.rating,
//   });

//   factory FakeStoreModel.fromJson(Map<String, dynamic> json) => FakeStoreModel(
//         id: json["id"],
//         title: json["title"],
//         price: json["price"]?.toDouble(),
//         description: json["description"],
//         category: json["category"],
//         image: json["image"],
//         rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "price": price,
//         "description": description,
//         "category": category,
//         "image": image,
//         "rating": rating?.toJson(),
//       };
// }

// class Rating {
//   double? rate;
//   int? count;

//   Rating({
//     this.rate,
//     this.count,
//   });

//   factory Rating.fromJson(Map<String, dynamic> json) => Rating(
//         rate: json["rate"]?.toDouble(),
//         count: json["count"],
//       );

//   Map<String, dynamic> toJson() => {
//         "rate": rate,
//         "count": count,
//       };
// }

// To parse this JSON data, do
//
//     final fakeStoreModel = fakeStoreModelFromJson(jsonString);

import 'dart:convert';

FakeStoreModel fakeStoreModelFromJson(String str) =>
    FakeStoreModel.fromJson(json.decode(str));

String fakeStoreModelToJson(FakeStoreModel data) => json.encode(data.toJson());

class FakeStoreModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  FakeStoreModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory FakeStoreModel.fromJson(Map<String, dynamic> json) => FakeStoreModel(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating?.toJson(),
      };
}

class Rating {
  double? rate;
  int? count;

  Rating({
    this.rate,
    this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"]?.toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}
