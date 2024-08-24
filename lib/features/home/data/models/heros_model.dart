class HerosModel {
  final String imgUrl;

  final String title;
  final String description;

  HerosModel({
    required this.imgUrl,
    required this.title,
    required this.description,
  });
}

List<HerosModel> heros = [
  HerosModel(
    imgUrl: 'assets/images/D.png',
    title: 'Peter Parker',
    description: 'Homem Aranha',
  ),
  HerosModel(
    imgUrl: 'assets/images/B.png',
    title: 'Steve Rogers',
    description: 'Capitão América',
  ),
  HerosModel(
    imgUrl: 'assets/images/C.png',
    title: 'Tony Stark',
    description: 'Homem de Ferro',
  ),
  HerosModel(
    imgUrl: 'assets/images/A.png',
    title: 'Johan Schmidt',
    description: 'Caveira Vermelha',
  ),
];
