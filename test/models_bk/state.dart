import 'dart:ffi';
import 'dart:convert';

class State {
  List<Data>? data;
  Meta? meta;

  State({this.data, this.meta});

  State.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    meta = json['meta'] != null ?Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  Attributes? attributes;

  Data({this.id, this.attributes});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    if (this.attributes != null) {
      data['attributes'] = this.attributes?.toJson();
    }
    return data;
  }
}

class Attributes {
  String? name;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  String? locale;
  Flag? flag;
  Citiys? citiys;
  Citiys? localizations;

  Attributes(
      {this.name,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.locale,
      this.flag,
      this.citiys,
      this.localizations});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    locale = json['locale'];
    flag = json['Flag'] != null ?  Flag.fromJson(json['Flag']) : null;
    citiys =
        json['citiys'] != null ?  Citiys.fromJson(json['citiys']) : null;
    localizations = json['localizations'] != null
        ?  Citiys.fromJson(json['localizations'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['Name'] = this.name;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
    data['locale'] = this.locale;
    if (flag != null) {
      data['Flag'] = flag?.toJson();
    }
    if (citiys != null) {
      data['citiys'] = citiys?.toJson();
    }
    if (localizations != null) {
      data['localizations'] = localizations?.toJson();
    }
    return data;
  }
}

class Flag {
  Data? data;

  Flag({this.data});

  Flag.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class AttributesFlag {
  String? name;
  String? alternativeText;
  String? caption;
  int? width;
  int? height;
  String? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  String? previewUrl;
  String? provider;
  String? createdAt;
  String? updatedAt;

  AttributesFlag(
      {this.name,
      this.alternativeText,
      this.caption,
      this.width,
      this.height,
      this.formats,
      this.hash,
      this.ext,
      this.mime,
      this.size,
      this.url,
      this.previewUrl,
      this.provider,
      this.createdAt,
      this.updatedAt});

  AttributesFlag.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    width = json['width'];
    height = json['height'];
    formats = json['formats'];
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    previewUrl = json['previewUrl'];
    provider = json['provider'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['name'] = this.name;
    data['alternativeText'] = this.alternativeText;
    data['caption'] = this.caption;
    data['width'] = this.width;
    data['height'] = this.height;
    data['formats'] = this.formats;
    data['hash'] = this.hash;
    data['ext'] = this.ext;
    data['mime'] = this.mime;
    data['size'] = this.size;
    data['url'] = this.url;
    data['previewUrl'] = this.previewUrl;
    data['provider'] = this.provider;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class Citiys {
  List<Data>? data;

  Citiys({this.data});

  Citiys.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data =  <Data>[];
      json['data'].forEach((v) {
        data?.add( Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AttributesCity {
  String? name;
  int? population;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  String? locale;

  AttributesCity(
      {this.name,
      this.population,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.locale});

  AttributesCity.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    population = json['Population'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    locale = json['locale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['Name'] = this.name;
    data['Population'] = this.population;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
    data['locale'] = this.locale;
    return data;
  }
}

class AttributesLocalization {
  String? name;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  String? locale;

  AttributesLocalization(
      {this.name,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.locale});

  AttributesLocalization.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    locale = json['locale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['Name'] = this.name;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
    data['locale'] = this.locale;
    return data;
  }
}

class Meta {
  Pagination? pagination;

  Meta({this.pagination});

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ?  Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class Pagination {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  Pagination({this.page, this.pageSize, this.pageCount, this.total});

  Pagination.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    pageSize = json['pageSize'];
    pageCount = json['pageCount'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['page'] = this.page;
    data['pageSize'] = this.pageSize;
    data['pageCount'] = this.pageCount;
    data['total'] = this.total;
    return data;
  }
}

List<State>? parseStates(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<State>((json) => State.fromJson(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<State>((json) => State.fromJson(json))
        .toList();
  }
}
