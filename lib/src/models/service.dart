class Service {
  Service({
    this.data,
    this.meta,
  });

  List<ServiceDatum>? data;
  ServMeta? meta;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        data: List<ServiceDatum>.from(
            json["data"].map((x) => ServiceDatum.fromJson(x))),
        meta: ServMeta.fromJson(json["meta"]),
      );

  /*Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta!.toJson(),
    };*/
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
    this.pictures,
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
  Pictures? pictures;

  factory SerRedAttributes.fromJson(Map<String, dynamic> json) {
    return SerRedAttributes(
      title: json["Title"],
      createdAt: DateTime.parse(json["createdAt"]),
      updatedAt: DateTime.parse(json["updatedAt"]),
      publishedAt: DateTime.parse(json["publishedAt"]),
      locale: json["locale"],
      icon: ServIcon.fromJson(json["Icon"]),
      universities: ServUniversities.fromJson(json["universities"]),
      pictures: Pictures.fromJson(json["Pictures"]),
      content:
          List<Content>.from(json["Content"].map((x) => Content.fromJson(x))),
      localizations: ServLocalizations.fromJson(json["localizations"]),
    );
  }

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
  ServIcon.nul();
  ServIcon({
    this.data,
  });

  ServRedData? data;

  factory ServIcon.fromJson(Map<String, dynamic> json) {
    if (json['data'].runtimeType == Null) {
      return ServIcon.nul();
    } else {
      return ServIcon(
        data: ServRedData.fromJson(json["data"]),
      );
    }
  }

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

  factory ServUniversities.fromJson(Map<String, dynamic> json) {
    return ServUniversities(
      data: List<ServUniversitiesDatum>.from(
          json["data"].map((x) => ServUniversitiesDatum.fromJson(x))),
    );
  }

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
class Pictures {
    Pictures({
        this.data,
    });

    List<PicturesDatum>? data;

    factory Pictures.fromJson(Map<String, dynamic> json) => Pictures(
        data: json["data"] == null ? null : List<PicturesDatum>.from(json["data"].map((x) => PicturesDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class PicturesDatum {
    PicturesDatum({
        this.id,
        this.attributes,
    });

    int? id;
    FluffyAttributes? attributes;

    factory PicturesDatum.fromJson(Map<String, dynamic> json) => PicturesDatum(
        id: json["id"],
        attributes: FluffyAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
    };
}

class FluffyAttributes {
    FluffyAttributes({
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
    FluffyFormats? formats;
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

    factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: FluffyFormats.fromJson(json["formats"]),
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
        "formats": formats?.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
    };
}

class FluffyFormats {
    FluffyFormats({
        this.large,
        this.small,
        this.medium,
        this.thumbnail,
    });

    Small? large;
    Small? small;
    Small? medium;
    Small? thumbnail;

    factory FluffyFormats.fromJson(Map<String, dynamic> json) => FluffyFormats(
        large: json["large"] == null ? null : Small.fromJson(json["large"]),
        small: Small.fromJson(json["small"]),
        medium: json["medium"] == null ? null : Small.fromJson(json["medium"]),
        thumbnail: Small.fromJson(json["thumbnail"]),
    );

    Map<String, dynamic> toJson() => {
        "large": large == null ? null : large?.toJson(),
        "small": small?.toJson(),
        "medium": medium == null ? null : medium?.toJson(),
        "thumbnail": thumbnail?.toJson(),
    };
}

class Small {
    Small({
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

    factory Small.fromJson(Map<String, dynamic> json) => Small(
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
