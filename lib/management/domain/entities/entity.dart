/*
class Activity{
  String title;
  String price;
  String image;
  String location;

  Activity(this.title, this.price, this.image, this.location);

  static List<Activity> Activities(){
    return[Activity("Bicicleta Best Inca...", "S/.350", "https://home.ripley.com.pe/Attachment/WOP_5/2022274158698/2022274158698_2.jpg", "La Bicicleterìa"),
      Activity("Bicicleta Baltoro Aro 29 ...", "S/.350", "https://falabella.scene7.com/is/image/FalabellaPE/882097973_1?wid=800&hei=800&qlt=70", "la Alameda 28"),
      Activity("Penny Board Rosada", "S/.350", "https://megaskaters.com/wp-content/uploads/2021/07/penny-board-rosa.jpg", "Larcomar"),
      Activity("Penny Board", "S/.350", "https://shredshack.com/wp-content/uploads/2021/07/22_penny-1.jpg", "Plaza La Bandera"),
      Activity("Skate Electrico Koowheel", "S/.350", "https://www.boardlife.se/wp-content/uploads/2018/05/electric-longboard-koowheel_side2.jpg", "Plaza San Miguel"),
      Activity("Skateboard Monark", "S/.350", "https://i.ytimg.com/vi/cjIAJZN9eRc/maxresdefault.jpg", "Parque Kennedy"),
    ];
  }

}
 */

class Management {
  Brand? brand;
  Customer? customer;
  String? description;
  int? id;
  String? imageUrl;
  int? score;
  Status? status;
  String? vehicleName;
  VehicleType? vehicleType;

  Management(
      {this.brand,
        this.customer,
        this.description,
        this.id,
        this.imageUrl,
        this.score,
        this.status,
        this.vehicleName,
        this.vehicleType});

  Management.fromJson(Map<String, dynamic> json) {
    brand = json['brand'] != null ? new Brand.fromJson(json['brand']) : null;
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
    description = json['description'];
    id = json['id'];
    imageUrl = json['imageUrl'];
    score = json['score'];
    status =
    json['status'] != null ? new Status.fromJson(json['status']) : null;
    vehicleName = json['vehicleName'];
    vehicleType = json['vehicleType'] != null
        ? new VehicleType.fromJson(json['vehicleType'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.brand != null) {
      data['brand'] = this.brand!.toJson();
    }
    if (this.customer != null) {
      data['customer'] = this.customer!.toJson();
    }
    data['description'] = this.description;
    data['id'] = this.id;
    data['imageUrl'] = this.imageUrl;
    data['score'] = this.score;
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    data['vehicleName'] = this.vehicleName;
    if (this.vehicleType != null) {
      data['vehicleType'] = this.vehicleType!.toJson();
    }
    return data;
  }
}

class Brand {
  String? brandName;
  int? id;

  Brand({this.brandName, this.id});

  Brand.fromJson(Map<String, dynamic> json) {
    brandName = json['brandName'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandName'] = this.brandName;
    data['id'] = this.id;
    return data;
  }
}

class Customer {
  String? birthDay;
  String? dni;
  String? email;
  String? gender;
  int? id;
  String? imageUrl;
  String? lastName;
  String? name;
  String? password;
  String? username;

  Customer(
      {this.birthDay,
        this.dni,
        this.email,
        this.gender,
        this.id,
        this.imageUrl,
        this.lastName,
        this.name,
        this.password,
        this.username});

  Customer.fromJson(Map<String, dynamic> json) {
    birthDay = json['birthDay'];
    dni = json['dni'];
    email = json['email'];
    gender = json['gender'];
    id = json['id'];
    imageUrl = json['imageUrl'];
    lastName = json['lastName'];
    name = json['name'];
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['birthDay'] = this.birthDay;
    data['dni'] = this.dni;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['id'] = this.id;
    data['imageUrl'] = this.imageUrl;
    data['lastName'] = this.lastName;
    data['name'] = this.name;
    data['password'] = this.password;
    data['username'] = this.username;
    return data;
  }
}

class Status {
  int? id;
  String? statusName;

  Status({this.id, this.statusName});

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    statusName = json['statusName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['statusName'] = this.statusName;
    return data;
  }
}

class VehicleType {
  int? id;
  String? typeName;

  VehicleType({this.id, this.typeName});

  VehicleType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    typeName = json['typeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['typeName'] = this.typeName;
    return data;
  }
}