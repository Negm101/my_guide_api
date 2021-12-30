import 'dart:convert';

class MyState {
  MyState({required this.data, this.meta, this.dataList});
  late final Data? data;
  late final Meta? meta;
  late final List<Data>? dataList;

  MyState.fromJson(Map<String, dynamic> json) {
    data = Data.fromJson(json['data']);
  }

  MyState.fromJsons(Map<String, dynamic> json) {
    dataList = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
    meta = Meta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data!.toJson();
    _data['meta'] = meta!.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final Attributes attributes;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = Attributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }

  @override
  String toString() => """
  Data(
    id: $id, 
    attributes: $attributes
  )
  """;
}

class Attributes {
  Attributes({
    required this.Name,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.locale,
    required this.flag,
    required this.citiys,
    required this.localizations,
  });
  late final String Name;
  late final String createdAt;
  late final String updatedAt;
  late final String publishedAt;
  late final String locale;
  late final Flag? flag;
  late final Citiys citiys;
  late final Localizations localizations;

  Attributes.fromJson(Map<String, dynamic> json) {
    Name = json['Name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    locale = json['locale'];
    flag = Flag.fromJson(json['Flag']);
    citiys = Citiys.fromJson(json['citiys']);
    localizations = Localizations.fromJson(json['localizations']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Name'] = Name;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['publishedAt'] = publishedAt;
    _data['locale'] = locale;
    _data['Flag'] = flag?.toJson();
    _data['citiys'] = citiys.toJson();
    _data['localizations'] = localizations.toJson();
    return _data;
  }

  @override
  String toString() {
    return """
    Attributes(
      Name: $Name, 
      createdAt: $createdAt, 
      updatedAt: $updatedAt, 
      publishedAt: $publishedAt, 
      locale: $locale, 
      flag: $flag, 
      citiys: $citiys, 
      localizations: $localizations
    )
    """;
  }
}

class Flag {
  Flag({
    required this.data,
  });
  late final DataFlag data;

  Flag.fromJson(Map<String, dynamic> json) {
    data = DataFlag.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.toJson();
    return _data;
  }

  @override
  String toString() => 'Flag(data: $data)';
}

class DataFlag {
  DataFlag({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final AttributesFlag attributes;

  DataFlag.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = AttributesFlag.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }

  @override
  String toString() => """
  DataFlag(
    id: $id, 
    attributes: $attributes
  )
  """;
}

class AttributesFlag {
  AttributesFlag({
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    this.previewUrl,
    required this.provider,
    this.providerMetadata,
    required this.createdAt,
    required this.updatedAt,
  });
  late final String name;
  late final String alternativeText;
  late final String caption;
  late final int width;
  late final int height;
  late final Null formats;
  late final String hash;
  late final String ext;
  late final String mime;
  late final double size;
  late final String url;
  late final Null previewUrl;
  late final String provider;
  late final Null providerMetadata;
  late final String createdAt;
  late final String updatedAt;

  AttributesFlag.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    width = json['width'];
    height = json['height'];
    formats = null;
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    previewUrl = null;
    provider = json['provider'];
    providerMetadata = null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['alternativeText'] = alternativeText;
    _data['caption'] = caption;
    _data['width'] = width;
    _data['height'] = height;
    _data['formats'] = formats;
    _data['hash'] = hash;
    _data['ext'] = ext;
    _data['mime'] = mime;
    _data['size'] = size;
    _data['url'] = url;
    _data['previewUrl'] = previewUrl;
    _data['provider'] = provider;
    _data['provider_metadata'] = providerMetadata;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    return _data;
  }

  @override
  String toString() {
    return """
    AttributesFlag(
      name: $name, 
      alternativeText: $alternativeText, 
      caption: $caption, 
      width: $width, 
      height: $height, 
      formats: $formats, 
      hash: $hash, 
      ext: $ext, 
      mime: $mime, 
      size: $size, 
      url: $url, 
      previewUrl: $previewUrl, 
      provider: $provider, 
      providerMetadata: $providerMetadata, 
      createdAt: $createdAt, 
      updatedAt: $updatedAt
    )
    """;
  }
}

class City {
  City({
    required this.citiys,
  });
  late final Citiys citiys;

  City.fromJson(Map<String, dynamic> json) {
    citiys = Citiys.fromJson(json['citiys']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['citiys'] = citiys.toJson();
    return _data;
  }

  @override
  String toString() => """
  City(
    citiys: $citiys
  )
  """;
}

class Citiys {
  Citiys({
    required this.data,
  });
  late final List<DataCity> data;

  Citiys.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => DataCity.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }

  @override
  String toString() => """
  Citiys(
    data: $data
  )
  """;
}

class DataCity {
  DataCity({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final AttributesCity attributes;

  DataCity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = AttributesCity.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }

  @override
  String toString() => """
  DataCity(
    id: $id,
    attributes: $attributes
  )
  """;
}

class AttributesCity {
  AttributesCity({
    required this.Name,
    required this.Population,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.locale,
  });
  late final String Name;
  late final int Population;
  late final String createdAt;
  late final String updatedAt;
  late final String publishedAt;
  late final String locale;

  AttributesCity.fromJson(Map<String, dynamic> json) {
    Name = json['Name'];
    Population = json['Population'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    locale = json['locale'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Name'] = Name;
    _data['Population'] = Population;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['publishedAt'] = publishedAt;
    _data['locale'] = locale;
    return _data;
  }

  @override
  String toString() {
    return """
    AttributesCity(
      Name: $Name, 
      Population: $Population, 
      createdAt: $createdAt, 
      updatedAt: $updatedAt, 
      publishedAt: $publishedAt, 
      locale: $locale
    )
    """;
  }
}

class Localization {
  Localization({
    required this.localizations,
  });
  late final Localizations localizations;

  Localization.fromJson(Map<String, dynamic> json) {
    localizations = Localizations.fromJson(json['localizations']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['localizations'] = localizations.toJson();
    return _data;
  }

  @override
  String toString() => """
  Localization(
    localizations: $localizations
  )
  """;
}

class Localizations {
  Localizations({
    required this.data,
  });
  late final List<DataLocale> data;

  Localizations.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => DataLocale.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }

  @override
  String toString() => """
  Localizations(
    data: $data
  )
  """;
}

class DataLocale {
  DataLocale({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final AttributesLocale attributes;

  DataLocale.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = AttributesLocale.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }

  @override
  String toString() => """
  DataLocale(
    id: $id, 
    attributes: $attributes
  )
  """;
}

class AttributesLocale {
  AttributesLocale({
    required this.Name,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.locale,
  });

  late final String Name;
  late final String createdAt;
  late final String updatedAt;
  late final String publishedAt;
  late final String locale;

  AttributesLocale.fromJson(Map<String, dynamic> json) {
    Name = json['Name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    locale = json['locale'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Name'] = Name;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['publishedAt'] = publishedAt;
    _data['locale'] = locale;
    return _data;
  }

  @override
  String toString() {
    return """
    AttributesLocale(
      Name: $Name,
      createdAt: $createdAt, 
      updatedAt: $updatedAt, 
      publishedAt: $publishedAt, 
      locale: $locale
    )
    """;
  }
}

class Meta {
  Meta({
    required this.pagination,
  });
  late final Pagination pagination;

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = Pagination.fromJson(json['pagination']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['pagination'] = pagination.toJson();
    return _data;
  }

  @override
  String toString() => """
  Paginations(
    pagination: $pagination
  )
  """;
}

class Pagination {
  Pagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });
  late final int page;
  late final int pageSize;
  late final int pageCount;
  late final int total;

  Pagination.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    pageSize = json['pageSize'];
    pageCount = json['pageCount'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['page'] = page;
    _data['pageSize'] = pageSize;
    _data['pageCount'] = pageCount;
    _data['total'] = total;
    return _data;
  }

  @override
  String toString() {
    return """
    Pagination(
      page: $page, 
      pageSize: $pageSize, 
      pageCount: $pageCount, 
      total: $total
    )
    """;
  }
}

List<MyState>? parseMyStates(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<MyState>((json) => MyState.fromJson(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<MyState>((json) => MyState.fromJson(json))
        .toList();
  }
}
