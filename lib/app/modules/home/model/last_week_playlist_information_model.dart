class LastWeekPlaylistInfoModel {
  bool? success;
  String? message;
  List<ListInfo>? data;

  LastWeekPlaylistInfoModel({this.success, this.message, this.data});

  factory LastWeekPlaylistInfoModel.fromJson(Map<String, dynamic> json) =>
      LastWeekPlaylistInfoModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<ListInfo>.from(
                json["data"]!.map((x) => ListInfo.fromJson(x)),
              ),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class ListInfo {
  String? showId;
  String? showTitle;
  String? showSlug;
  String? showLogo;
  String? showLogoOuter;
  String? showCoverImage;
  String? showLikeCount;
  String? showEpisodeSerial;
  String? showDescription;

  ListInfo({
    this.showId,
    this.showTitle,
    this.showSlug,
    this.showLogo,
    this.showLogoOuter,
    this.showCoverImage,
    this.showLikeCount,
    this.showEpisodeSerial,
    this.showDescription,
  });

  factory ListInfo.fromJson(Map<String, dynamic> json) => ListInfo(
        showId: json["show_id"],
        showTitle: json["show_title"],
        showSlug: json["show_slug"],
        showLogo: json["show_logo"],
        showLogoOuter: json["show_logo_outer"],
        showCoverImage: json["show_cover_image"],
        showLikeCount: json["show_like_count"],
        showEpisodeSerial: json["show_episode_serial"],
        showDescription: json["show_description"],
      );

  Map<String, dynamic> toJson() => {
        "show_id": showId,
        "show_title": showTitle,
        "show_slug": showSlug,
        "show_logo": showLogo,
        "show_logo_outer": showLogoOuter,
        "show_cover_image": showCoverImage,
        "show_like_count": showLikeCount,
        "show_episode_serial": showEpisodeSerial,
        "show_description": showDescription,
      };
}
