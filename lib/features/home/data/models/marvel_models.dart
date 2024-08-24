import 'package:json_annotation/json_annotation.dart';

part 'marvel_models.g.dart';

@JsonSerializable()
class MarvelResponse {
  int? code;
  String? status;
  String? copyright;
  String? attributionText;
  String? attributionHTML;
  Data? data;
  String? etag;

  MarvelResponse({
    this.code,
    this.status,
    this.copyright,
    this.attributionText,
    this.attributionHTML,
    this.data,
    this.etag,
  });

  factory MarvelResponse.fromJson(Map<String, dynamic> json) =>
      _$MarvelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MarvelResponseToJson(this);
}

@JsonSerializable()
class Data {
  int? offset;
  int? limit;
  int? total;
  int? count;
  List<Results>? results;

  Data({this.offset, this.limit, this.total, this.count, this.results});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Results {
  int? id;
  String? name;
  String? description;
  String? modified;
  String? resourceURI;
  List<Urls>? urls;
  Thumbnail? thumbnail;
  Comics? comics;
  Comics? stories;
  Comics? events;
  Comics? series;

  Results({
    this.id,
    this.name,
    this.description,
    this.modified,
    this.resourceURI,
    this.urls,
    this.thumbnail,
    this.comics,
    this.stories,
    this.events,
    this.series,
  });

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}

@JsonSerializable()
class Urls {
  String? type;
  String? url;

  Urls({this.type, this.url});

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);

  Map<String, dynamic> toJson() => _$UrlsToJson(this);
}

@JsonSerializable()
class Thumbnail {
  String? path;
  String? extension;

  Thumbnail({this.path, this.extension});

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);
}

@JsonSerializable()
class Comics {
  int? available;
  int? returned;
  String? collectionURI;
  List<Items>? items;

  Comics({this.available, this.returned, this.collectionURI, this.items});

  factory Comics.fromJson(Map<String, dynamic> json) => _$ComicsFromJson(json);

  Map<String, dynamic> toJson() => _$ComicsToJson(this);
}

@JsonSerializable()
class Items {
  String? resourceURI;
  String? name;
  String? type;

  Items({this.resourceURI, this.name, this.type});

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}
