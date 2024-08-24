// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarvelResponse _$MarvelResponseFromJson(Map<String, dynamic> json) =>
    MarvelResponse(
      code: json['code'] as String?,
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      attributionText: json['attributionText'] as String?,
      attributionHTML: json['attributionHTML'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      etag: json['etag'] as String?,
    );

Map<String, dynamic> _$MarvelResponseToJson(MarvelResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHTML': instance.attributionHTML,
      'data': instance.data,
      'etag': instance.etag,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      offset: json['offset'] as String?,
      limit: json['limit'] as String?,
      total: json['total'] as String?,
      count: json['count'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      modified: json['modified'] as String?,
      resourceURI: json['resourceURI'] as String?,
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => Urls.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      comics: json['comics'] == null
          ? null
          : Comics.fromJson(json['comics'] as Map<String, dynamic>),
      stories: json['stories'] == null
          ? null
          : Comics.fromJson(json['stories'] as Map<String, dynamic>),
      events: json['events'] == null
          ? null
          : Comics.fromJson(json['events'] as Map<String, dynamic>),
      series: json['series'] == null
          ? null
          : Comics.fromJson(json['series'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'modified': instance.modified,
      'resourceURI': instance.resourceURI,
      'urls': instance.urls,
      'thumbnail': instance.thumbnail,
      'comics': instance.comics,
      'stories': instance.stories,
      'events': instance.events,
      'series': instance.series,
    };

Urls _$UrlsFromJson(Map<String, dynamic> json) => Urls(
      type: json['type'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$UrlsToJson(Urls instance) => <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
    };

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) => Thumbnail(
      path: json['path'] as String?,
      extension: json['extension'] as String?,
    );

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };

Comics _$ComicsFromJson(Map<String, dynamic> json) => Comics(
      available: json['available'] as String?,
      returned: json['returned'] as String?,
      collectionURI: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComicsToJson(Comics instance) => <String, dynamic>{
      'available': instance.available,
      'returned': instance.returned,
      'collectionURI': instance.collectionURI,
      'items': instance.items,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      resourceURI: json['resourceURI'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'resourceURI': instance.resourceURI,
      'name': instance.name,
      'type': instance.type,
    };
