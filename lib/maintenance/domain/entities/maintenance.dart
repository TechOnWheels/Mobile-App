/*
class Maintenance{
  String title;
  String prize;
  String image;

  Maintenance(this.title, this.prize, this.image);

  static List<Maintenance> maintenance(){
    return[Maintenance("Bicicleta Best Inca ...", "S/.50", "https://cdn.euroinnova.edu.es/img/subidasEditor/fotolia_87668009_subscription_xxl-1613131669.webp"),
      Maintenance("Bicicleta Baltoro Aro 29 ...", "S/.50", "https://img.freepik.com/fotos-premium/taller-reparacion-bicicletas-hombre-pone-interruptor-velocidad_266732-18417.jpg?w=2000"),
      Maintenance("Penny Board Rosada", "S/.50", "https://www.lavanguardia.com/files/image_449_220/uploads/2019/03/11/5fa524c1d7846.jpeg"),
      Maintenance("Evolution Xtrm", "S/.50", "https://i.ytimg.com/vi/dj3s8gCNG30/maxresdefault.jpg"),
      Maintenance("Skate Electrico Koowheel", "S/.50", "https://img.freepik.com/fotos-premium/reparacion-bicicletas-taller-hombre-comprueba-mecanismos_266732-18438.jpg?w=2000"),
      Maintenance("Skateboard Monark", "S/.50", "https://www.escueladesarts.com/wp-content/uploads/MECANICO-EXPERTO-EN-REPARACION-DE-BICICLETAS.jpg"),
    ];
  }

}
 */

class Maintenance {
  String? description;
  String? endDate;
  int? id;
  String? imageUrl;
  String? offerName;
  int? offerPrice;
  String? startDate;

  Maintenance(
      {this.description,
        this.endDate,
        this.id,
        this.imageUrl,
        this.offerName,
        this.offerPrice,
        this.startDate});

  Maintenance.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    endDate = json['endDate'];
    id = json['id'];
    imageUrl = json['imageUrl'];
    offerName = json['offerName'];
    offerPrice = json['offerPrice'];
    startDate = json['startDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['endDate'] = this.endDate;
    data['id'] = this.id;
    data['imageUrl'] = this.imageUrl;
    data['offerName'] = this.offerName;
    data['offerPrice'] = this.offerPrice;
    data['startDate'] = this.startDate;
    return data;
  }
}