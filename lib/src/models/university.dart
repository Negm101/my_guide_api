class University {
  University({
    this.data,
    this.meta,
  });

  List<UniversityDatum>? data;
  UniMeta? meta;

  factory University.fromJson(Map<String, dynamic> json) => University(
        data: List<UniversityDatum>.from(
            json["data"].map((x) => UniversityDatum.fromJson(x))),
        meta: UniMeta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta!.toJson(),
      };
}

class UniversityDatum {
  UniversityDatum({
    this.id,
    this.attributes,
  });

  int? id;
  UniPurpleAttributes? attributes;

  factory UniversityDatum.fromJson(Map<String, dynamic> json) =>
      UniversityDatum(
        id: json["id"],
        attributes: UniPurpleAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
      };
}

class UniPurpleAttributes {
  UniPurpleAttributes({
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.locale,
    this.picture,
    this.icon,
    this.citiy,
    this.localizations,
  });

  String? name;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? locale;
  UniPicture? picture;
  UniIcon? icon;
  UniCity? citiy;
  UniLocalizations? localizations;

  factory UniPurpleAttributes.fromJson(Map<String, dynamic> json) =>
      UniPurpleAttributes(
        name: json["Name"],
        description: json["Description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        locale: json["locale"],
        picture: UniPicture.fromJson(json["Picture"]),
        icon: UniIcon.fromJson(json["Icon"]),
        citiy: UniCity.fromJson(json["citiy"]),
        localizations: UniLocalizations.fromJson(json["localizations"]),
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "Description": description,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "publishedAt": publishedAt!.toIso8601String(),
        "locale": locale,
        "UniPicture": picture!.toJson(),
        "UniIcon": icon!.toJson(),
        "citiy": citiy!.toJson(),
        "localizations": localizations!.toJson(),
      };
}

class UniCity {
  UniCity({
    this.data,
  });

  UniDat? data;

  factory UniCity.fromJson(Map<String, dynamic> json) => UniCity(
        data: UniDat.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
      };
}

class UniDat {
  UniDat({
    this.id,
    this.attributes,
  });

  int? id;
  UniStickyAttributes? attributes;

  factory UniDat.fromJson(Map<String, dynamic> json) => UniDat(
        id: json["id"],
        attributes: UniStickyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
      };
}

class UniStickyAttributes {
  UniStickyAttributes({
    this.name,
    this.population,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.locale,
    this.description,
  });

  String? name;
  int? population;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? locale;
  dynamic? description;

  factory UniStickyAttributes.fromJson(Map<String, dynamic> json) =>
      UniStickyAttributes(
        name: json["Name"],
        population: json["Population"] == null ? null : json["Population"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        locale: json["locale"],
        description: json["Description"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "Population": population == null ? null : population,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "publishedAt": publishedAt!.toIso8601String(),
        "locale": locale,
        "Description": description,
      };
}

class UniIcon {
  UniIcon({
    this.data,
  });

  UniData? data;

  factory UniIcon.fromJson(Map<String, dynamic> json) => UniIcon(
        data: UniData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
      };
}

class UniData {
  UniData({
    this.id,
    this.attributes,
  });

  int? id;
  UniFluffyAttributes? attributes;

  factory UniData.fromJson(Map<String, dynamic> json) => UniData(
        id: json["id"],
        attributes: UniFluffyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
      };
}

class UniFluffyAttributes {
  UniFluffyAttributes({
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
  UniPurpleFormats? formats;
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

  factory UniFluffyAttributes.fromJson(Map<String, dynamic> json) =>
      UniFluffyAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: UniPurpleFormats.fromJson(json["formats"]),
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

class UniPurpleFormats {
  UniPurpleFormats();

  factory UniPurpleFormats.fromJson(Map<String, dynamic> json) =>
      UniPurpleFormats();

  Map<String, dynamic> toJson() => {};
}

class UniLocalizations {
  UniLocalizations({
    this.data,
  });

  List<UniDat>? data;

  factory UniLocalizations.fromJson(Map<String, dynamic> json) =>
      UniLocalizations(
        data: List<UniDat>.from(json["data"].map((x) => UniDat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class UniPicture {
  UniPicture({
    this.data,
  });

  List<UniPictureDatum>? data;

  factory UniPicture.fromJson(Map<String, dynamic> json) {
    return UniPicture(
      data: List<UniPictureDatum>.from(
          json["data"].map((x) => UniPictureDatum.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class UniPictureDatum {
  UniPictureDatum({
    this.id,
    this.attributes,
  });

  int? id;
  UniTentacledAttributes? attributes;

  factory UniPictureDatum.fromJson(Map<String, dynamic> json) =>
      UniPictureDatum(
        id: json["id"],
        attributes: UniTentacledAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
      };
}

class UniTentacledAttributes {
  UniTentacledAttributes({
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
  UniFluffyFormats? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  dynamic providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory UniTentacledAttributes.fromJson(Map<String, dynamic> json) =>
      UniTentacledAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: UniFluffyFormats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
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

class UniFluffyFormats {
  UniFluffyFormats({
    this.small,
    this.thumbnail,
  });

  UniPicSmall? small;
  UniPicSmall? thumbnail;

  factory UniFluffyFormats.fromJson(Map<String, dynamic> json) =>
      UniFluffyFormats(
        small: UniPicSmall.fromJson(json["small"]),
        thumbnail: UniPicSmall.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "small": small!.toJson(),
        "thumbnail": thumbnail!.toJson(),
      };
}

class UniPicSmall {
  UniPicSmall({
    this.ext,
    this.url,
    this.hash,
    this.mime,
    this.name,
    this.path,
    this.size,
    this.width,
    this.height,
  });

  String? ext;
  String? url;
  String? hash;
  String? mime;
  String? name;
  dynamic path;
  double? size;
  int? width;
  int? height;

  factory UniPicSmall.fromJson(Map<String, dynamic> json) => UniPicSmall(
        ext: json["ext"],
        url: json["url"],
        hash: json["hash"],
        mime: json["mime"],
        name: json["name"],
        path: json["path"],
        size: json["size"].toDouble(),
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "ext": ext,
        "url": url,
        "hash": hash,
        "mime": mime,
        "name": name,
        "path": path,
        "size": size,
        "width": width,
        "height": height,
      };
}

class UniMeta {
  UniMeta({
    this.pagination,
  });

  UniPagination? pagination;

  factory UniMeta.fromJson(Map<String, dynamic> json) => UniMeta(
        pagination: UniPagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination!.toJson(),
      };
}

class UniPagination {
  UniPagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  factory UniPagination.fromJson(Map<String, dynamic> json) => UniPagination(
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
