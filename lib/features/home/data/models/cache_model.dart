import 'package:hive/hive.dart';

part 'cache_model.g.dart';

@HiveType(typeId: 1)
class Results {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? name;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String? modified;

  @HiveField(4)
  String? resourceURI;

  @HiveField(5)
  Thumbnail? thumbnail;

  @HiveField(6)
  List<Urls>? urls;

  Results({
    this.id,
    this.name,
    this.description,
    this.modified,
    this.resourceURI,
    this.thumbnail,
    this.urls,
  });
}

@HiveType(typeId: 2)
class Thumbnail {
  @HiveField(0)
  String? path;

  @HiveField(1)
  String? extension;

  Thumbnail({this.path, this.extension});
}

@HiveType(typeId: 3)
class Urls {
  @HiveField(0)
  String? type;

  @HiveField(1)
  String? url;

  Urls({this.type, this.url});
}
