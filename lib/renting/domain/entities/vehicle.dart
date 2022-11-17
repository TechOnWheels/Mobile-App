class Vehicle{
  String title;
  String prize;
  String image;
  
  Vehicle(this.title, this.prize, this.image);
  
  static List<Vehicle> vehicles(){
    return[Vehicle("Bicicleta Best Inca...", "S/.350", "https://home.ripley.com.pe/Attachment/WOP_5/2022274158698/2022274158698_2.jpg"),
      Vehicle("Bicicleta Baltoro Aro 29 ...", "S/.350", "https://falabella.scene7.com/is/image/FalabellaPE/882097973_1?wid=800&hei=800&qlt=70"),
      Vehicle("Penny Board Rosada", "S/.350", "https://megaskaters.com/wp-content/uploads/2021/07/penny-board-rosa.jpg"),
      Vehicle("Penny Board", "S/.350", "https://shredshack.com/wp-content/uploads/2021/07/22_penny-1.jpg"),
      Vehicle("Skate Electrico Koowheel", "S/.350", "https://www.boardlife.se/wp-content/uploads/2018/05/electric-longboard-koowheel_side2.jpg"),
      Vehicle("Skateboard Monark", "S/.350", "https://i.ytimg.com/vi/cjIAJZN9eRc/maxresdefault.jpg"),
    ];
  }
  
}

class User {
  final String name, email, userName;
  User(this.name, this.email, this.userName);
}

class Userlist {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  Userlist(
      {this.id,
        this.name,
        this.username,
        this.email,
        this.address,
        this.phone,
        this.website,
        this.company});

  Userlist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    phone = json['phone'];
    website = json['website'];
    company =
    json['company'] != null ? new Company.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['phone'] = this.phone;
    data['website'] = this.website;
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    return data;
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
    geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['suite'] = this.suite;
    data['city'] = this.city;
    data['zipcode'] = this.zipcode;
    if (this.geo != null) {
      data['geo'] = this.geo!.toJson();
    }
    return data;
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  Geo.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({this.name, this.catchPhrase, this.bs});

  Company.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    catchPhrase = json['catchPhrase'];
    bs = json['bs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['catchPhrase'] = this.catchPhrase;
    data['bs'] = this.bs;
    return data;
  }
}
