// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

City cityFromJson(String str) => City.fromJson(json.decode(str));

String cityToJson(City data) => json.encode(data.toJson());

class City {
    City({
        this.data,
        this.meta,
    });

    List<Datum>? data;
    Meta? meta;

    factory City.fromJson(Map<String, dynamic> json) => City(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta!.toJson(),
    };
    
}

class Datum {
    Datum({
        this.id,
        this.attributes,
    });

    int? id;
    PurpleAttributes? attributes;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: PurpleAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
    };
}

class PurpleAttributes {
    PurpleAttributes({
        this.name,
        this.population,
        this.createdAt,
        this.updatedAt,
        this.publishedAt,
        this.locale,
        this.state,
        this.picture,
        this.localizations,
    });

    String? name;
    int? population;
    DateTime? createdAt;
    DateTime? updatedAt;
    DateTime? publishedAt;
    String? locale;
    MyCityState? state;
    Picture? picture;
    RedLocalizations? localizations;

    factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
        name: json["Name"],
        population: json["Population"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        locale: json["locale"],
        state: MyCityState.fromJson(json["state"]),
        picture: Picture.fromJson(json["Picture"]),
        localizations: RedLocalizations.fromJson(json["localizations"]),
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Population": population,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "locale": locale,
        "state": state?.toJson(),
        "Picture": picture?.toJson(),
        "localizations": localizations?.toJson(),
    };
}

class RedLocalizations {
    RedLocalizations({
        this.data,
    });

    List<Dat>? data;

    factory RedLocalizations.fromJson(Map<String, dynamic> json) => RedLocalizations(
        data: List<Dat>.from(json["data"].map((x) => Dat.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Dat {
    Dat({
        this.id,
        this.attributes,
    });

    int? id;
    TentacledAttributes? attributes;

    factory Dat.fromJson(Map<String, dynamic> json) => Dat(
        id: json["id"],
        attributes: TentacledAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
    };
}

class TentacledAttributes {
    TentacledAttributes({
        this.name,
        this.population,
        this.createdAt,
        this.updatedAt,
        this.publishedAt,
        this.locale,
    });

    String? name;
    int? population;
    DateTime? createdAt;
    DateTime? updatedAt;
    DateTime? publishedAt;
    String? locale;

    factory TentacledAttributes.fromJson(Map<String, dynamic> json) => TentacledAttributes(
        name: json["Name"],
        population: json["Population"] == null ? null : json["Population"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        locale: json["locale"],
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Population": population == null ? null : population,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "publishedAt": publishedAt!.toIso8601String(),
        "locale": locale,
    };
}

class Picture {
    Picture({
        this.data,
    });

    Data? data;

    factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.attributes,
    });

    int? id;
    RedAttributes? attributes;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: RedAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
    };
}

class RedAttributes {
    RedAttributes({
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
    RedFormats? formats;
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

    factory RedAttributes.fromJson(Map<String, dynamic> json) => RedAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: RedFormats.fromJson(json["formats"]),
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

class RedFormats {
    RedFormats({
        this.large,
        this.small,
        this.medium,
        this.thumbnail,
    });

    MediaSize? large;
    MediaSize? small;
    MediaSize? medium;
    MediaSize? thumbnail;

    factory RedFormats.fromJson(Map<String, dynamic> json) => RedFormats(
        large: MediaSize.fromJson(json["large"]),
        small: MediaSize.fromJson(json["small"]),
        medium: MediaSize.fromJson(json["medium"]),
        thumbnail: MediaSize.fromJson(json["thumbnail"]),
    );

    Map<String, dynamic> toJson() => {
        "large": large!.toJson(),
        "small": small!.toJson(),
        "medium": medium!.toJson(),
        "thumbnail": thumbnail!.toJson(),
    };
}

class MediaSize {
    MediaSize({
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

    factory MediaSize.fromJson(Map<String, dynamic> json) => MediaSize(
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

class MyCityState {
    MyCityState({
        this.data,
    });

    Dat? data;

    factory MyCityState.fromJson(Map<String, dynamic> json) => MyCityState(
        data: Dat.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
    };
}

class Meta {
    Meta({
        this.pagination,
    });

    Pagination? pagination;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination!.toJson(),
    };
}

class Pagination {
    Pagination({
        this.page,
        this.pageSize,
        this.pageCount,
        this.total,
    });

    int? page;
    int? pageSize;
    int? pageCount;
    int? total;

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
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
