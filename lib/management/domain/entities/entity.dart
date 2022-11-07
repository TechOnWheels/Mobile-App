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