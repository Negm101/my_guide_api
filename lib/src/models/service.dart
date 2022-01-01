class Service {
  Service({
    this.data,
    this.meta,
  });

  List<ServiceDatum>? data;
  ServMeta? meta;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        data: json["data"],
        meta: ServMeta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta!.toJson(),
      };

  
}

class ServiceDatum {
  ServiceDatum({
    this.id,
    this.attributes,
  });

  int? id;
  SerRedAttributes? attributes;

  factory ServiceDatum.fromJson(Map<String, dynamic> json) => ServiceDatum(
        id: json["id"],
        attributes: SerRedAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
      };
}

class SerRedAttributes {
  SerRedAttributes({
    this.title,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.locale,
    this.icon,
    this.universities,
    this.content,
    this.localizations,
  });

  String? title;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? locale;
  ServIcon? icon;
  ServUniversities? universities;
  List<Content>? content;
  ServLocalizations? localizations;

  factory SerRedAttributes.fromJson(Map<String, dynamic> json) =>
      SerRedAttributes(
        title: json["Title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        locale: json["locale"],
        icon: ServIcon.fromJson(json["Icon"]),
        universities: ServUniversities.fromJson(json["universities"]),
        content:
            List<Content>.from(json["Content"].map((x) => Content.fromJson(x))),
        localizations: ServLocalizations.fromJson(json["localizations"]),
      );

  Map<String, dynamic> toJson() => {
        "Title": title,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "publishedAt": publishedAt!.toIso8601String(),
        "locale": locale,
        "ServIcon": icon!.toJson(),
        "universities": universities!.toJson(),
        "Content": List<dynamic>.from(content!.map((x) => x.toJson())),
        "localizations": localizations!.toJson(),
      };
}

class Content {
  Content({
    this.id,
    this.component,
    this.title,
    this.description,
    this.name,
    this.link,
  });

  int? id;
  String? component;
  String? title;
  String? description;
  String? name;
  String? link;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        id: json["id"],
        component: json["__component"],
        title: json["Title"],
        description: json["Description"],
        name: json["Name"],
        link: json["Link"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "__component": component,
        "Title": title,
        "Description": description,
        "Name": name,
        "Link": link,
      };
}

class ServIcon {
  ServIcon({
    this.data,
  });

  ServRedData? data;

  factory ServIcon.fromJson(Map<String, dynamic> json) => ServIcon(
        data: ServRedData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
      };
}

class ServRedData {
  ServRedData({
    this.id,
    this.attributes,
  });

  int? id;
  ServDataAttributes? attributes;

  factory ServRedData.fromJson(Map<String, dynamic> json) => ServRedData(
        id: json["id"],
        attributes: ServDataAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
      };
}

class ServDataAttributes {
  ServDataAttributes({
    this.name,
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
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  String? name;
  String? alternativeText;
  String? caption;
  int? width;
  int? height;
  ServFormats? formats;
  String? hash;
  String? ext;
  String? mime;
  int? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  dynamic providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory ServDataAttributes.fromJson(Map<String, dynamic> json) =>
      ServDataAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: ServFormats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"],
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats!.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
      };
}

class ServFormats {
  ServFormats();

  factory ServFormats.fromJson(Map<String, dynamic> json) => ServFormats();

  Map<String, dynamic> toJson() => {};
}

class ServLocalizations {
  ServLocalizations({
    this.data,
  });

  List<ServLocalizationsDatum>? data;

  factory ServLocalizations.fromJson(Map<String, dynamic> json) =>
      ServLocalizations(
        data: List<ServLocalizationsDatum>.from(
            json["data"].map((x) => ServLocalizationsDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class ServLocalizationsDatum {
  ServLocalizationsDatum({
    this.id,
    this.attributes,
  });

  int? id;
  ServFluffyAttributes? attributes;

  factory ServLocalizationsDatum.fromJson(Map<String, dynamic> json) =>
      ServLocalizationsDatum(
        id: json["id"],
        attributes: ServFluffyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
      };
}

class ServFluffyAttributes {
  ServFluffyAttributes({
    this.title,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.locale,
  });

  String? title;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? locale;

  factory ServFluffyAttributes.fromJson(Map<String, dynamic> json) =>
      ServFluffyAttributes(
        title: json["Title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        locale: json["locale"],
      );

  Map<String, dynamic> toJson() => {
        "Title": title,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "publishedAt": publishedAt!.toIso8601String(),
        "locale": locale,
      };
}

class ServUniversities {
  ServUniversities({
    this.data,
  });

  List<ServUniversitiesDatum>? data;

  factory ServUniversities.fromJson(Map<String, dynamic> json) =>
      ServUniversities(
        data: List<ServUniversitiesDatum>.from(
            json["data"].map((x) => ServUniversitiesDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class ServUniversitiesDatum {
  ServUniversitiesDatum({
    this.id,
    this.attributes,
  });

  int? id;
  ServTentacledAttributes? attributes;

  factory ServUniversitiesDatum.fromJson(Map<String, dynamic> json) =>
      ServUniversitiesDatum(
        id: json["id"],
        attributes: ServTentacledAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
      };
}

class ServTentacledAttributes {
  ServTentacledAttributes({
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.locale,
  });

  String? name;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? locale;

  factory ServTentacledAttributes.fromJson(Map<String, dynamic> json) =>
      ServTentacledAttributes(
        name: json["Name"],
        description: json["Description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        locale: json["locale"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "Description": description,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "locale": locale,
      };
}

class ServMeta {
  ServMeta({
    this.pagination,
  });

  ServPagination? pagination;

  factory ServMeta.fromJson(Map<String, dynamic> json) => ServMeta(
        pagination: ServPagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination!.toJson(),
      };
}

class ServPagination {
  ServPagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  factory ServPagination.fromJson(Map<String, dynamic> json) => ServPagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}
