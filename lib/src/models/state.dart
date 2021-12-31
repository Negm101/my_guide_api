
class MyState {
  MyState({required this.data, this.meta, this.dataList});
  late final DataState? data;
  late final StatesMeta? meta;
  late final List<DataState>? dataList;

  MyState.fromJson(Map<String, dynamic> json) {
    data = DataState.fromJson(json['data']);
  }

  MyState.fromJsons(Map<String, dynamic> json) {
    dataList = List.from(json['data']).map((e) => DataState.fromJson(e)).toList();
    meta = StatesMeta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data!.toJson();
    _data['meta'] = meta!.toJson();
    return _data;
  }
}

abstract class MainData {
  
}

class DataState {
  DataState({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final StateDataAttributes attributes;

  DataState.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = StateDataAttributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }

  @override
  String toString() => """
  DataState(
    id: $id, 
    attributes: $attributes
  )
  """;
}

class StateDataAttributes {
  StateDataAttributes({
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
  late final StateDataAttributesFlag? flag;
  late final StateDataAttributesCities citiys;
  late final StateDataAttributesLocalizations localizations;

  StateDataAttributes.fromJson(Map<String, dynamic> json) {
    Name = json['Name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    locale = json['locale'];
    flag = StateDataAttributesFlag.fromJson(json['Flag']);
    citiys = StateDataAttributesCities.fromJson(json['citiys']);
    localizations = StateDataAttributesLocalizations.fromJson(json['localizations']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Name'] = Name;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['publishedAt'] = publishedAt;
    _data['locale'] = locale;
    _data['attributes'] = flag?.toJson();
    _data['citiys'] = citiys.toJson();
    _data['localizations'] = localizations.toJson();
    return _data;
  }

  @override
  String toString() {
    return """
    StateDataAttributes(
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

class StateDataAttributesFlag {
  StateDataAttributesFlag({
    required this.data,
  });
  late final StateDataAttributesFlagData data;

  StateDataAttributesFlag.fromJson(Map<String, dynamic> json) {
    data = StateDataAttributesFlagData.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.toJson();
    return _data;
  }

  @override
  String toString() => 'StateDataAttributesFlag(data: $data)';
}

class StateDataAttributesFlagData {
  StateDataAttributesFlagData({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final StateDataAttributesFlagDataAttributes attributes;

  StateDataAttributesFlagData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = StateDataAttributesFlagDataAttributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }

  @override
  String toString() => """
  StateDataAttributesFlagData(
    id: $id, 
    attributes: $attributes
  )
  """;
}

class StateDataAttributesFlagDataAttributes {
  StateDataAttributesFlagDataAttributes({
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

  StateDataAttributesFlagDataAttributes.fromJson(Map<String, dynamic> json) {
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
    StateDataAttributesFlagDataAttributes(
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

class StateDataAttributesCity {
  StateDataAttributesCity({
    required this.citiys,
  });
  late final StateDataAttributesCities citiys;

  StateDataAttributesCity.fromJson(Map<String, dynamic> json) {
    citiys = StateDataAttributesCities.fromJson(json['citiys']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['citiys'] = citiys.toJson();
    return _data;
  }

  @override
  String toString() => """
  CityState(
    citiys: $citiys
  )
  """;
}

class StateDataAttributesCities {
  StateDataAttributesCities({
    required this.data,
  });
  late final List<StateDataAttributesCityData> data;

  StateDataAttributesCities.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => StateDataAttributesCityData.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }

  @override
  String toString() => """
  StateDataAttributesCities(
    data: $data
  )
  """;
}

class StateDataAttributesCityData {
  StateDataAttributesCityData({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final StateDataAttributesCityDataAttributes attributes;

  StateDataAttributesCityData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = StateDataAttributesCityDataAttributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }

  @override
  String toString() => """
  StateDataAttributesCityData(
    id: $id,
    attributes: $attributes
  )
  """;
}

class StateDataAttributesCityDataAttributes {
  StateDataAttributesCityDataAttributes({
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

  StateDataAttributesCityDataAttributes.fromJson(Map<String, dynamic> json) {
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
    StateDataAttributesCityDataAttributes(
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

class StateDataAttributesLocalization {
  StateDataAttributesLocalization({
    required this.localizations,
  });
  late final StateDataAttributesLocalizations localizations;

  StateDataAttributesLocalization.fromJson(Map<String, dynamic> json) {
    localizations = StateDataAttributesLocalizations.fromJson(json['localizations']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['localizations'] = localizations.toJson();
    return _data;
  }

  @override
  String toString() => """
  StateDataAttributesLocalization(
    localizations: $localizations
  )
  """;
}

class StateDataAttributesLocalizations {
  StateDataAttributesLocalizations({
    required this.data,
  });
  late final List<StateDataAttributesLocalizationsData> data;

  StateDataAttributesLocalizations.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => StateDataAttributesLocalizationsData.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }

  @override
  String toString() => """
  StateDataAttributesLocalizations(
    data: $data
  )
  """;
}

class StateDataAttributesLocalizationsData {
  StateDataAttributesLocalizationsData({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final StateDataAttributesLocalizationsDataAttributes attributes;

  StateDataAttributesLocalizationsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = StateDataAttributesLocalizationsDataAttributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }

  @override
  String toString() => """
  StateDataAttributesLocalizationsData(
    id: $id, 
    attributes: $attributes
  )
  """;
}

class StateDataAttributesLocalizationsDataAttributes {
  StateDataAttributesLocalizationsDataAttributes({
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

  StateDataAttributesLocalizationsDataAttributes.fromJson(Map<String, dynamic> json) {
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
    StateDataAttributesLocalizationsDataAttributes(
      Name: $Name,
      createdAt: $createdAt, 
      updatedAt: $updatedAt, 
      publishedAt: $publishedAt, 
      locale: $locale
    )
    """;
  }
}

class StatesMeta {
  StatesMeta({
    required this.pagination,
  });
  late final StatesMetaPagination pagination;

  StatesMeta.fromJson(Map<String, dynamic> json) {
    pagination = StatesMetaPagination.fromJson(json['pagination']);
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

class StatesMetaPagination {
  StatesMetaPagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });
  late final int page;
  late final int pageSize;
  late final int pageCount;
  late final int total;

  StatesMetaPagination.fromJson(Map<String, dynamic> json) {
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
    StatesMetaPagination(
      page: $page, 
      pageSize: $pageSize, 
      pageCount: $pageCount, 
      total: $total
    )
    """;
  }
}
