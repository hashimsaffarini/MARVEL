import 'package:hive/hive.dart';
import 'package:marvel_app/features/home/data/models/marvel_models.dart';

part 'cache_model.g.dart';

@HiveType(typeId: 0)
class CachedResult extends HiveObject {
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
  CachedThumbnail? thumbnail;

  @HiveField(6)
  CachedComics? comics;

  CachedResult({
    this.id,
    this.name,
    this.description,
    this.modified,
    this.resourceURI,
    this.thumbnail,
    this.comics,
  });

  // Convert from Results to CachedResult
  factory CachedResult.fromResults(Results result) {
    return CachedResult(
      id: result.id,
      name: result.name,
      description: result.description,
      modified: result.modified,
      resourceURI: result.resourceURI,
      thumbnail: result.thumbnail != null
          ? CachedThumbnail.fromThumbnail(result.thumbnail!)
          : null,
      comics: result.comics != null
          ? CachedComics.fromComics(result.comics!)
          : null,
    );
  }

  // Convert from CachedResult to Results
  Results toResults() {
    return Results(
      id: id,
      name: name,
      description: description,
      modified: modified,
      resourceURI: resourceURI,
      thumbnail: thumbnail?.toThumbnail(),
      comics: comics?.toComics(),
    );
  }
}

@HiveType(typeId: 1)
class CachedThumbnail {
  @HiveField(0)
  String? path;

  @HiveField(1)
  String? extension;

  CachedThumbnail({this.path, this.extension});

  factory CachedThumbnail.fromThumbnail(Thumbnail thumbnail) {
    return CachedThumbnail(
      path: thumbnail.path,
      extension: thumbnail.extension,
    );
  }

  Thumbnail toThumbnail() {
    return Thumbnail(
      path: path,
      extension: extension,
    );
  }
}

@HiveType(typeId: 2)
class CachedComics {
  @HiveField(0)
  int? available;

  @HiveField(1)
  int? returned;

  @HiveField(2)
  String? collectionURI;

  CachedComics({this.available, this.returned, this.collectionURI});

  factory CachedComics.fromComics(Comics comics) {
    return CachedComics(
      available: comics.available,
      returned: comics.returned,
      collectionURI: comics.collectionURI,
    );
  }

  Comics toComics() {
    return Comics(
      available: available,
      returned: returned,
      collectionURI: collectionURI,
    );
  }
}
