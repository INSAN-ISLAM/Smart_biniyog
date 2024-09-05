// // To parse this JSON data, do
// //
// //     final returnModel = returnModelFromJson(jsonString);
//
// import 'dart:convert';
//
// ReturnModel returnModelFromJson(String str) => ReturnModel.fromJson(json.decode(str));
//
// String returnModelToJson(ReturnModel data) => json.encode(data.toJson());
//
// class ReturnModel {
//   int currentPage;
//   List<Datum> data;
//   String firstPageUrl;
//   int from;
//   int lastPage;
//   String lastPageUrl;
//   List<Link> links;
//   dynamic nextPageUrl;
//   String path;
//   int perPage;
//   dynamic prevPageUrl;
//   int to;
//   int total;
//
//   ReturnModel({
//     required this.currentPage,
//     required this.data,
//     required this.firstPageUrl,
//     required this.from,
//     required this.lastPage,
//     required this.lastPageUrl,
//     required this.links,
//     required this.nextPageUrl,
//     required this.path,
//     required this.perPage,
//     required this.prevPageUrl,
//     required this.to,
//     required this.total,
//   });
//
//   factory ReturnModel.fromJson(Map<String, dynamic> json) => ReturnModel(
//     currentPage: json["current_page"],
//     data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//     firstPageUrl: json["first_page_url"],
//     from: json["from"],
//     lastPage: json["last_page"],
//     lastPageUrl: json["last_page_url"],
//     links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
//     nextPageUrl: json["next_page_url"],
//     path: json["path"],
//     perPage: json["per_page"],
//     prevPageUrl: json["prev_page_url"],
//     to: json["to"],
//     total: json["total"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "current_page": currentPage,
//     "data": List<dynamic>.from(data.map((x) => x.toJson())),
//     "first_page_url": firstPageUrl,
//     "from": from,
//     "last_page": lastPage,
//     "last_page_url": lastPageUrl,
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//     "next_page_url": nextPageUrl,
//     "path": path,
//     "per_page": perPage,
//     "prev_page_url": prevPageUrl,
//     "to": to,
//     "total": total,
//   };
// }
//
// class Datum {
//   int id;
//   String categoriesId;
//   dynamic businessType;
//   String name;
//   String image;
//   String projectPrice;
//   String returnMax;
//   String returnMin;
//   String place;
//   String investmentTime;
//   String investmentGoal;
//   String raise;
//   DateTime startDate;
//   DateTime expirationDate;
//   String status;
//   String minInvestment;
//   String projected;
//   String about;
//   DateTime createdAt;
//   DateTime updatedAt;
//   bool check;
//   List<dynamic> myBusinessType;
//   Category category;
//   List<Review> reviews;
//
//   Datum({
//     required this.id,
//     required this.categoriesId,
//     required this.businessType,
//     required this.name,
//     required this.image,
//     required this.projectPrice,
//     required this.returnMax,
//     required this.returnMin,
//     required this.place,
//     required this.investmentTime,
//     required this.investmentGoal,
//     required this.raise,
//     required this.startDate,
//     required this.expirationDate,
//     required this.status,
//     required this.minInvestment,
//     required this.projected,
//     required this.about,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.check,
//     required this.myBusinessType,
//     required this.category,
//     required this.reviews,
//   });
//
//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//     id: json["id"],
//     categoriesId: json["categories_id"],
//     businessType: json["business_type"],
//     name: json["name"],
//     image: json["image"],
//     projectPrice: json["project_price"],
//     returnMax: json["return_max"],
//     returnMin: json["return_min"],
//     place: json["place"],
//     investmentTime: json["investment_time"],
//     investmentGoal: json["investment_goal"],
//     raise: json["raise"],
//     startDate: DateTime.parse(json["start_date"]),
//     expirationDate: DateTime.parse(json["expiration_date"]),
//     status: json["status"],
//     minInvestment: json["min_investment"],
//     projected: json["projected"],
//     about: json["about"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//     check: json["check"],
//     myBusinessType: List<dynamic>.from(json["my_business_type"].map((x) => x)),
//     category: Category.fromJson(json["category"]),
//     reviews: List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "categories_id": categoriesId,
//     "business_type": businessType,
//     "name": name,
//     "image": image,
//     "project_price": projectPrice,
//     "return_max": returnMax,
//     "return_min": returnMin,
//     "place": place,
//     "investment_time": investmentTime,
//     "investment_goal": investmentGoal,
//     "raise": raise,
//     "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
//     "expiration_date": "${expirationDate.year.toString().padLeft(4, '0')}-${expirationDate.month.toString().padLeft(2, '0')}-${expirationDate.day.toString().padLeft(2, '0')}",
//     "status": status,
//     "min_investment": minInvestment,
//     "projected": projected,
//     "about": about,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "check": check,
//     "my_business_type": List<dynamic>.from(myBusinessType.map((x) => x)),
//     "category": category.toJson(),
//     "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
//   };
// }
//
// class Category {
//   int id;
//   String icon;
//   String name;
//   String status;
//   DateTime createdAt;
//   DateTime updatedAt;
//
//   Category({
//     required this.id,
//     required this.icon,
//     required this.name,
//     required this.status,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//     id: json["id"],
//     icon: json["icon"],
//     name: json["name"],
//     status: json["status"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "icon": icon,
//     "name": name,
//     "status": status,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//   };
// }
//
// class Review {
//   int id;
//   String projectId;
//   String clientId;
//   String rating;
//   String reviewText;
//   dynamic reply;
//   String status;
//   DateTime createdAt;
//   DateTime updatedAt;
//   Client client;
//
//   Review({
//     required this.id,
//     required this.projectId,
//     required this.clientId,
//     required this.rating,
//     required this.reviewText,
//     required this.reply,
//     required this.status,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.client,
//   });
//
//   factory Review.fromJson(Map<String, dynamic> json) => Review(
//     id: json["id"],
//     projectId: json["project_id"],
//     clientId: json["client_id"],
//     rating: json["rating"],
//     reviewText: json["review_text"],
//     reply: json["reply"],
//     status: json["status"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//     client: Client.fromJson(json["client"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "project_id": projectId,
//     "client_id": clientId,
//     "rating": rating,
//     "review_text": reviewText,
//     "reply": reply,
//     "status": status,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "client": client.toJson(),
//   };
// }
//
// class Client {
//   int id;
//   dynamic name;
//   String email;
//   DateTime verifiedAt;
//   dynamic phone;
//   dynamic address;
//   dynamic nid;
//   dynamic nidF;
//   dynamic nidB;
//   dynamic tin;
//   String balance;
//   dynamic image;
//   dynamic otp;
//   dynamic gender;
//   String status;
//   String clientType;
//   String referralCode;
//   dynamic referralId;
//   String referralStatus;
//   DateTime createdAt;
//   DateTime updatedAt;
//
//   Client({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.verifiedAt,
//     required this.phone,
//     required this.address,
//     required this.nid,
//     required this.nidF,
//     required this.nidB,
//     required this.tin,
//     required this.balance,
//     required this.image,
//     required this.otp,
//     required this.gender,
//     required this.status,
//     required this.clientType,
//     required this.referralCode,
//     required this.referralId,
//     required this.referralStatus,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   factory Client.fromJson(Map<String, dynamic> json) => Client(
//     id: json["id"],
//     name: json["name"],
//     email: json["email"],
//     verifiedAt: DateTime.parse(json["verified_at"]),
//     phone: json["phone"],
//     address: json["address"],
//     nid: json["nid"],
//     nidF: json["nid_f"],
//     nidB: json["nid_b"],
//     tin: json["tin"],
//     balance: json["balance"],
//     image: json["image"],
//     otp: json["otp"],
//     gender: json["gender"],
//     status: json["status"],
//     clientType: json["client_type"],
//     referralCode: json["referral_code"],
//     referralId: json["referral_id"],
//     referralStatus: json["referral_status"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "email": email,
//     "verified_at": verifiedAt.toIso8601String(),
//     "phone": phone,
//     "address": address,
//     "nid": nid,
//     "nid_f": nidF,
//     "nid_b": nidB,
//     "tin": tin,
//     "balance": balance,
//     "image": image,
//     "otp": otp,
//     "gender": gender,
//     "status": status,
//     "client_type": clientType,
//     "referral_code": referralCode,
//     "referral_id": referralId,
//     "referral_status": referralStatus,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//   };
// }
//
// class Link {
//   String? url;
//   String label;
//   bool active;
//
//   Link({
//     required this.url,
//     required this.label,
//     required this.active,
//   });
//
//   factory Link.fromJson(Map<String, dynamic> json) => Link(
//     url: json["url"],
//     label: json["label"],
//     active: json["active"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "url": url,
//     "label": label,
//     "active": active,
//   };
// }
