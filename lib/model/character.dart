class Character {
  final int id;
  final String nameCategory;

  Character(this.id, this.nameCategory);

  Character.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nameCategory = json['name_category'];
}