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