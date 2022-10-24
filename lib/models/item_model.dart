class Item {
  String? title;
  String? category;
  String? thumb_url;
  String? location;
  num? price;
  String? description;
  num? bathrooms;
  num? rooms;
  num? area;
  num? car_spaces;

  Item(this.title, this.category, this.thumb_url, this.location, this.price,
      this.description, this.bathrooms, this.rooms, this.area, this.car_spaces);

  static List<Item> recommendation = [
    Item(
      'Casa moderna para alugar',
      'Casa',
      'https://images.pexels.com/photos/2102587/pexels-photo-2102587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      2500,
      'Apartamento contendo 1 quarto, sala, cozinha, área de serviço e banheiro, sem vaga de garagem, sem áreas de lazer, piscinas ou quadras.',
      2,
      4,
      235,
      2,
    ),
    Item(
      'Casa moderna para alugar',
      'Casa',
      'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      3200,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/950745/pexels-photo-950745.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      1600,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/129494/pexels-photo-129494.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      800,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
    ),
  ];

  static List<Item> nearby = [
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/7606067/pexels-photo-7606067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      400,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/265004/pexels-photo-265004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      350,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/276508/pexels-photo-276508.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      600,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
    ),
    Item(
      'Apartamento moderno para alugar',
      'Apartamento',
      'https://images.pexels.com/photos/259962/pexels-photo-259962.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Itajubá - MG',
      565,
      'Casa -  Alugar - Itajubá, MG - 2 banheiros - 4 quartos - 235 metros quadrados',
      2,
      4,
      235,
      2,
    ),
  ];
}
