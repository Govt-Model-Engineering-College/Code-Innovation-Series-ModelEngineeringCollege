// To parse this JSON data, do
//
//     final clinicData = clinicDataFromJson(jsonString);

import 'dart:convert';

ClinicData clinicDataFromJson(String str) => ClinicData.fromJson(json.decode(str));

String clinicDataToJson(ClinicData data) => json.encode(data.toJson());

class ClinicData {
  ClinicData({
    this.items,
  });

  List<Item> items;

  factory ClinicData.fromJson(Map<String, dynamic> json) => ClinicData(
    items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "items": items == null ? null : List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  Item({
    this.title,
    this.id,
    this.resultType,
    this.address,
    this.position,
    this.access,
    this.distance,
    this.categories,
    this.references,
    this.contacts,
  });

  String title;
  String id;
  ResultType resultType;
  Address address;
  Position position;
  List<Position> access;
  int distance;
  List<Category> categories;
  List<Reference> references;
  List<Contact> contacts;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    title: json["title"] == null ? null : json["title"],
    id: json["id"] == null ? null : json["id"],
    resultType: json["resultType"] == null ? null : resultTypeValues.map[json["resultType"]],
    address: json["address"] == null ? null : Address.fromJson(json["address"]),
    position: json["position"] == null ? null : Position.fromJson(json["position"]),
    access: json["access"] == null ? null : List<Position>.from(json["access"].map((x) => Position.fromJson(x))),
    distance: json["distance"] == null ? null : json["distance"],
    categories: json["categories"] == null ? null : List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    references: json["references"] == null ? null : List<Reference>.from(json["references"].map((x) => Reference.fromJson(x))),
    contacts: json["contacts"] == null ? null : List<Contact>.from(json["contacts"].map((x) => Contact.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "title": title == null ? null : title,
    "id": id == null ? null : id,
    "resultType": resultType == null ? null : resultTypeValues.reverse[resultType],
    "address": address == null ? null : address.toJson(),
    "position": position == null ? null : position.toJson(),
    "access": access == null ? null : List<dynamic>.from(access.map((x) => x.toJson())),
    "distance": distance == null ? null : distance,
    "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x.toJson())),
    "references": references == null ? null : List<dynamic>.from(references.map((x) => x.toJson())),
    "contacts": contacts == null ? null : List<dynamic>.from(contacts.map((x) => x.toJson())),
  };
}

class Position {
  Position({
    this.lat,
    this.lng,
  });

  double lat;
  double lng;

  factory Position.fromJson(Map<String, dynamic> json) => Position(
    lat: json["lat"] == null ? null : json["lat"].toDouble(),
    lng: json["lng"] == null ? null : json["lng"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat == null ? null : lat,
    "lng": lng == null ? null : lng,
  };
}

class Address {
  Address({
    this.label,
    this.countryCode,
    this.countryName,
    this.stateCode,
    this.state,
    this.county,
    this.city,
    this.district,
    this.subdistrict,
    this.street,
    this.postalCode,
  });

  String label;
  CountryCode countryCode;
  CountryName countryName;
  StateCode stateCode;
  String state;
  String county;
  String city;
  String district;
  String subdistrict;
  String street;
  String postalCode;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    label: json["label"] == null ? null : json["label"],
    countryCode: json["countryCode"] == null ? null : countryCodeValues.map[json["countryCode"]],
    countryName: json["countryName"] == null ? null : countryNameValues.map[json["countryName"]],
    stateCode: json["stateCode"] == null ? null : stateCodeValues.map[json["stateCode"]],
    state: json["state"] == null ? null : json["state"],
    county: json["county"] == null ? null : json["county"],
    city: json["city"] == null ? null : json["city"],
    district: json["district"] == null ? null : json["district"],
    subdistrict: json["subdistrict"] == null ? null : json["subdistrict"],
    street: json["street"] == null ? null : json["street"],
    postalCode: json["postalCode"] == null ? null : json["postalCode"],
  );

  Map<String, dynamic> toJson() => {
    "label": label == null ? null : label,
    "countryCode": countryCode == null ? null : countryCodeValues.reverse[countryCode],
    "countryName": countryName == null ? null : countryNameValues.reverse[countryName],
    "stateCode": stateCode == null ? null : stateCodeValues.reverse[stateCode],
    "state": state == null ? null : state,
    "county": county == null ? null : county,
    "city": city == null ? null : city,
    "district": district == null ? null : district,
    "subdistrict": subdistrict == null ? null : subdistrict,
    "street": street == null ? null : street,
    "postalCode": postalCode == null ? null : postalCode,
  };
}

enum CountryCode { IND, ZAF }

final countryCodeValues = EnumValues({
  "IND": CountryCode.IND,
  "ZAF": CountryCode.ZAF
});

enum CountryName { INDIA, SOUTH_AFRICA }

final countryNameValues = EnumValues({
  "India": CountryName.INDIA,
  "South Africa": CountryName.SOUTH_AFRICA
});

enum StateCode { KL, MH, KA, TN }

final stateCodeValues = EnumValues({
  "KA": StateCode.KA,
  "KL": StateCode.KL,
  "MH": StateCode.MH,
  "TN": StateCode.TN
});

class Category {
  Category({
    this.id,
    this.name,
    this.primary,
  });

  PurpleId id;
  Name name;
  bool primary;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"] == null ? null : purpleIdValues.map[json["id"]],
    name: json["name"] == null ? null : nameValues.map[json["name"]],
    primary: json["primary"] == null ? null : json["primary"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : purpleIdValues.reverse[id],
    "name": name == null ? null : nameValues.reverse[name],
    "primary": primary == null ? null : primary,
  };
}

enum PurpleId { THE_80080000159, THE_80080000158, THE_80080000325, THE_80080000000 }

final purpleIdValues = EnumValues({
  "800-8000-0000": PurpleId.THE_80080000000,
  "800-8000-0158": PurpleId.THE_80080000158,
  "800-8000-0159": PurpleId.THE_80080000159,
  "800-8000-0325": PurpleId.THE_80080000325
});

enum Name { HOSPITAL, MEDICAL_SERVICES_CLINICS, HOSPITAL_EMERGENCY_ROOM, HOSPITAL_OR_HEALTH_CARE_FACILITY }

final nameValues = EnumValues({
  "Hospital": Name.HOSPITAL,
  "Hospital Emergency Room": Name.HOSPITAL_EMERGENCY_ROOM,
  "Hospital or Health Care Facility": Name.HOSPITAL_OR_HEALTH_CARE_FACILITY,
  "Medical Services/Clinics": Name.MEDICAL_SERVICES_CLINICS
});

class Contact {
  Contact({
    this.phone,
    this.www,
    this.email,
    this.tollFree,
  });

  List<Email> phone;
  List<Www> www;
  List<Email> email;
  List<Email> tollFree;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    phone: json["phone"] == null ? null : List<Email>.from(json["phone"].map((x) => Email.fromJson(x))),
    www: json["www"] == null ? null : List<Www>.from(json["www"].map((x) => Www.fromJson(x))),
    email: json["email"] == null ? null : List<Email>.from(json["email"].map((x) => Email.fromJson(x))),
    tollFree: json["tollFree"] == null ? null : List<Email>.from(json["tollFree"].map((x) => Email.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "phone": phone == null ? null : List<dynamic>.from(phone.map((x) => x.toJson())),
    "www": www == null ? null : List<dynamic>.from(www.map((x) => x.toJson())),
    "email": email == null ? null : List<dynamic>.from(email.map((x) => x.toJson())),
    "tollFree": tollFree == null ? null : List<dynamic>.from(tollFree.map((x) => x.toJson())),
  };
}

class Email {
  Email({
    this.value,
  });

  String value;

  factory Email.fromJson(Map<String, dynamic> json) => Email(
    value: json["value"] == null ? null : json["value"],
  );

  Map<String, dynamic> toJson() => {
    "value": value == null ? null : value,
  };
}

class Www {
  Www({
    this.value,
    this.categories,
  });

  String value;
  List<Supplier> categories;

  factory Www.fromJson(Map<String, dynamic> json) => Www(
    value: json["value"] == null ? null : json["value"],
    categories: json["categories"] == null ? null : List<Supplier>.from(json["categories"].map((x) => Supplier.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "value": value == null ? null : value,
    "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x.toJson())),
  };
}

class Supplier {
  Supplier({
    this.id,
  });

  SupplierId id;

  factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
    id: json["id"] == null ? null : supplierIdValues.map[json["id"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : supplierIdValues.reverse[id],
  };
}

enum SupplierId { THE_80080000158, CORE }

final supplierIdValues = EnumValues({
  "core": SupplierId.CORE,
  "800-8000-0158": SupplierId.THE_80080000158
});

class Reference {
  Reference({
    this.supplier,
    this.id,
  });

  Supplier supplier;
  String id;

  factory Reference.fromJson(Map<String, dynamic> json) => Reference(
    supplier: json["supplier"] == null ? null : Supplier.fromJson(json["supplier"]),
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "supplier": supplier == null ? null : supplier.toJson(),
    "id": id == null ? null : id,
  };
}

enum ResultType { PLACE }

final resultTypeValues = EnumValues({
  "place": ResultType.PLACE
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
