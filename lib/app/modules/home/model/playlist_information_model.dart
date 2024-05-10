class PlaylistInfoModel {
  String? title;
  String? description;
  String? kind;
  List<Playlist>? playlist;
  String? feedInstanceId;

  PlaylistInfoModel({
    this.title,
    this.description,
    this.kind,
    this.playlist,
    this.feedInstanceId,
  });

  factory PlaylistInfoModel.fromJson(Map<String, dynamic> json) =>
      PlaylistInfoModel(
        title: json["title"],
        description: json["description"],
        kind: json["kind"],
        playlist: json["playlist"] == null
            ? []
            : List<Playlist>.from(
                json["playlist"]!.map((x) => Playlist.fromJson(x))),
        feedInstanceId: json["feed_instance_id"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "kind": kind,
        "playlist": playlist == null
            ? []
            : List<dynamic>.from(playlist!.map((x) => x.toJson())),
        "feed_instance_id": feedInstanceId,
      };
}

class Playlist {
  String? title;
  String? mediaid;
  String? link;
  String? image;
  List<PlaylistImage>? images;
  int? duration;
  int? pubdate;
  String? description;
  List<Source>? sources;
  Variations? variations;

  Playlist({
    this.title,
    this.mediaid,
    this.link,
    this.image,
    this.images,
    this.duration,
    this.pubdate,
    this.description,
    this.sources,
    this.variations,
  });

  factory Playlist.fromJson(Map<String, dynamic> json) => Playlist(
        title: json["title"],
        mediaid: json["mediaid"],
        link: json["link"],
        image: json["image"],
        images: json["images"] == null
            ? []
            : List<PlaylistImage>.from(
                json["images"]!.map((x) => PlaylistImage.fromJson(x))),
        duration: json["duration"],
        pubdate: json["pubdate"],
        description: json["description"],
        sources: json["sources"] == null
            ? []
            : List<Source>.from(
                json["sources"]!.map((x) => Source.fromJson(x))),
        variations: json["variations"] == null
            ? null
            : Variations.fromJson(json["variations"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "mediaid": mediaid,
        "link": link,
        "image": image,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "duration": duration,
        "pubdate": pubdate,
        "description": description,
        "sources": sources == null
            ? []
            : List<dynamic>.from(sources!.map((x) => x.toJson())),
        "variations": variations?.toJson(),
      };
}

class PlaylistImage {
  String? src;
  int? width;
  String? type;

  PlaylistImage({this.src, this.width, this.type});

  factory PlaylistImage.fromJson(Map<String, dynamic> json) => PlaylistImage(
        src: json["src"],
        width: json["width"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "src": src,
        "width": width,
        "type": type,
      };
}

class Source {
  String? file;
  String? type;
  String? label;
  int? bitrate;
  int? filesize;

  Source({this.file, this.type, this.label, this.bitrate, this.filesize});

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        file: json["file"],
        type: json["type"],
        label: json["label"],
        bitrate: json["bitrate"],
        filesize: json["filesize"],
      );

  Map<String, dynamic> toJson() => {
        "file": file,
        "type": type,
        "label": label,
        "bitrate": bitrate,
        "filesize": filesize,
      };
}

class Variations {
  Variations();

  factory Variations.fromJson(Map<String, dynamic> json) => Variations();

  Map<String, dynamic> toJson() => {};
}
